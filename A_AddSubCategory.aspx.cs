using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A_AddSubCategory : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlCommand cmd;
    DataSet ds;
    MySqlDataAdapter da;
    void mycon()
    {
        con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();

    }

    void Fillcatdrop()
    {
        //if (IsPostBack == false)
        {
            mycon();
            cmd = new MySqlCommand("select * from category_master", con);
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            Dropcategory.DataTextField = "category";
            Dropcategory.DataValueField = "cat_id";
            Dropcategory.DataSource = ds;
            Dropcategory.DataBind();
            Dropcategory.Items.Insert(0, "---select Category---");
            Dropcategory.Items[0].Value = "0";
            con.Close();
        }

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Fillcatdrop();

        if (Request.QueryString["edit"] != null)
        {


            mycon();
            cmd = new MySqlCommand("select * from sub_category_master where sub_cat_id=@sid", con);
            cmd.Parameters.AddWithValue("@sid", Request.QueryString["edit"].ToString());
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string cat = ds.Tables[0].Rows[0]["cat_id"].ToString();
                txtsubcategory.Text = ds.Tables[0].Rows[0]["sub_category"].ToString();
                Dropstatus.Text = ds.Tables[0].Rows[0]["status"].ToString();
                Dropcategory.Text = cat;
                Fillcatdrop();
            }

            con.Close();
        }


    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        mycon();
        if (Request.QueryString["edit"] != null)
        {
            cmd = new MySqlCommand("Update  sub_category_master set cat_id=@cid,sub_category=@subcat,status=@st where sub_cat_id=@sid", con);
            cmd.Parameters.AddWithValue("@cid", Dropcategory.Text);
            cmd.Parameters.AddWithValue("@subcat", txtsubcategory.Text);
            cmd.Parameters.AddWithValue("@st", Dropstatus.Text);
            cmd.Parameters.AddWithValue("@sid",Request.QueryString["edit"].ToString());
            cmd.ExecuteNonQuery();
            Dropcategory.SelectedIndex = 0;
            txtsubcategory.Text = "";
            Dropstatus.SelectedIndex = 0;
            con.Close();
            Response.Write("<script>alert('Successfully Update')</script>");
        }
        else
        {


          
            cmd = new MySqlCommand("Select * from sub_category_master where sub_category=@st", con);
            cmd.Parameters.AddWithValue("@st", txtsubcategory.Text);
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script>alert('All Redy Exits Category')</script>");
            }
            else
            {

                cmd = new MySqlCommand("Insert into sub_category_master values(Null,@catid,@subcat,@st,Now())", con);
                cmd.Parameters.AddWithValue("@catid", Dropcategory.Text);
                cmd.Parameters.AddWithValue("@subcat", txtsubcategory.Text);
                cmd.Parameters.AddWithValue("@st", Dropstatus.Text);
                cmd.ExecuteNonQuery();
                Dropcategory.SelectedIndex = 0;
                txtsubcategory.Text = "";
                Dropstatus.SelectedIndex = 0;
                con.Close();
                Response.Write("<script>alert('Successfully Add SubCategory')</script>");
            }
        }
    }
}