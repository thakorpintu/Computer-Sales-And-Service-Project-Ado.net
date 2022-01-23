using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class A_AddCategory : System.Web.UI.Page
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

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["edit"] != null)
        {


            mycon();
            cmd = new MySqlCommand("select * from category_master where cat_id=@cid", con);
            cmd.Parameters.AddWithValue("@cid", Request.QueryString["edit"].ToString());
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtcat.Text = ds.Tables[0].Rows[0]["category"].ToString();
                Dropst.SelectedValue = ds.Tables[0].Rows[0]["status"].ToString();
            }

            con.Close();
        }

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        mycon();


        if (Request.QueryString["edit"] != null)
        {
            cmd = new MySqlCommand("Update category_master set  category=@cat,status=@st where cat_id=@cid", con);
            cmd.Parameters.AddWithValue("@cat", txtcat.Text);
            cmd.Parameters.AddWithValue("@st", Dropst.Text);
            cmd.Parameters.AddWithValue("@cid", Request.QueryString["edit"].ToString());
            cmd.ExecuteNonQuery();
            txtcat.Text = "";
            Dropst.SelectedIndex = 0;
            con.Close();
            Response.Write("<script>alert('Successfully Update')</script>");
        }
        else
        {


            cmd = new MySqlCommand("Select * from category_master where category=@ct", con);
            cmd.Parameters.AddWithValue("@ct", txtcat.Text);
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script>alert('All Redy Exits Category')</script>");
            }
            else
            {
                cmd = new MySqlCommand("Insert into category_master values(Null,@cat,@st,Now())", con);
                cmd.Parameters.AddWithValue("@cat", txtcat.Text);
                cmd.Parameters.AddWithValue("@st", Dropst.Text);
                cmd.ExecuteNonQuery();
                txtcat.Text = "";
                Dropst.SelectedIndex = 0;
                con.Close();
                Response.Write("<script>alert('Successfully Add Category')</script>");
            }

        }
    }
}