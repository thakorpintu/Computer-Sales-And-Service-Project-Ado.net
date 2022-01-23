using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;


public partial class A_AddThirdCategory : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlCommand cmd;
    MySqlDataAdapter da;
    DataSet ds;
    void mycon()
    {
        con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
    }

    void Fillcatdrop()
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {


            Fillcatdrop();
            if (Request.QueryString["edit"] != null)
            {


                mycon();
                cmd = new MySqlCommand("select * from third_cat_master where Third_cat_id=@sid", con);
                cmd.Parameters.AddWithValue("@sid", Request.QueryString["edit"].ToString());
                da = new MySqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string cat = ds.Tables[0].Rows[0]["cat_id"].ToString();
                    string sub = ds.Tables[0].Rows[0]["sub_cat_id"].ToString();
                    txtthirdcategory.Text = ds.Tables[0].Rows[0]["Third_category"].ToString();
                    Dropstatus.Text = ds.Tables[0].Rows[0]["status"].ToString();

                    Fillcatdrop();
                    Dropcategory.Text = cat;

                    Fillsubdrop();
                    Dropsubcategory.Text = sub;

                }
            }

            con.Close();
        }
    }

    void Fillsubdrop()
    {

        mycon();
        cmd = new MySqlCommand("select * from sub_category_master where cat_id=@cid", con);
        cmd.Parameters.AddWithValue("@cid", Dropcategory.Text);
        da = new MySqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        Dropsubcategory.DataTextField = "sub_category";
        Dropsubcategory.DataValueField = "sub_cat_id";
        Dropsubcategory.DataSource = ds;
        Dropsubcategory.DataBind();
        Dropsubcategory.Items.Insert(0, "---select Category---");
        Dropsubcategory.Items[0].Value = "0";
        con.Close();



    }
    protected void Dropcategory_SelectedIndexChanged(object sender, EventArgs e)
    {

        Fillsubdrop();

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        mycon();
        if (Request.QueryString["edit"] != null)
        {
            cmd = new MySqlCommand("Update third_cat_master set cat_id=@cid,sub_cat_id=@sid,Third_category=@tcat,status=@st where Third_cat_id=@tid", con);
            cmd.Parameters.AddWithValue("@cid", Dropcategory.Text);
            cmd.Parameters.AddWithValue("@sid", Dropsubcategory.Text);
            cmd.Parameters.AddWithValue("@tcat", txtthirdcategory.Text);
            cmd.Parameters.AddWithValue("@st", Dropstatus.Text);
            cmd.Parameters.AddWithValue("@tid", Request.QueryString["edit"].ToString());
            cmd.ExecuteNonQuery();
            Dropcategory.SelectedIndex = 0;
            Dropsubcategory.SelectedIndex = 0;
            txtthirdcategory.Text = "";
            Dropstatus.SelectedIndex = 0;
            con.Close();
            Response.Write("<script>alert('Successfully Update')</script>");
        }
        else
        {




            cmd = new MySqlCommand("Select * from third_cat_master where Third_category=@tcat", con);
            cmd.Parameters.AddWithValue("@tcat", txtthirdcategory.Text);
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script>alert('All Redy Exits ThirdCategory')</script>");
            }
            else
            {

                cmd = new MySqlCommand("Insert into third_cat_master values(Null,@cid,@sid,@tcat,@st,Now())", con);
                cmd.Parameters.AddWithValue("@cid", Dropcategory.Text);
                cmd.Parameters.AddWithValue("@sid", Dropsubcategory.Text);
                cmd.Parameters.AddWithValue("@tcat", txtthirdcategory.Text);
                cmd.Parameters.AddWithValue("@st", Dropstatus.Text);
                cmd.ExecuteNonQuery();
                Dropcategory.SelectedIndex = 0;
                Dropsubcategory.SelectedIndex = 0;
                txtthirdcategory.Text = "";
                Dropstatus.SelectedIndex = 0;
                con.Close();
                Response.Write("<script>alert('Successfully Add SubCategory')</script>");
            }
        }

    }
}