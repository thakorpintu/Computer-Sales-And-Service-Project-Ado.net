using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Admin_A_login : System.Web.UI.Page
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

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        mycon();
        cmd = new MySqlCommand("select * from admin_master where email=@em and password=@pass", con);
        cmd.Parameters.AddWithValue("@em", txtemail.Text);
        cmd.Parameters.AddWithValue("@pass", txtpassword.Text);
        da = new MySqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["user"] = txtemail.Text;
            Response.Redirect("Dashboard.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Email And Password ')</script>");
        }
    }
}