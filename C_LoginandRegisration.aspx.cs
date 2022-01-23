using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
//    protected void btnreg_Click(object sender, EventArgs e)
//    {

        
//        mycon();
//        cmd = new MySqlCommand("select * from user_master where email=@em", con);
//        cmd.Parameters.AddWithValue("@em", txtemail.Text);
//        da = new MySqlDataAdapter(cmd);
//        ds = new DataSet();
//        da.Fill(ds);
//        if (ds.Tables[0].Rows.Count > 0)
//        {
//            Response.Write("<script>alert('All Redy Exits ')</script>");
//        }
//        else
//        {

//        cmd = new MySqlCommand("Insert into user_master Values(Null,@username,@email,@mobile,@password,Now())",con);
//        cmd.Parameters.AddWithValue("@username",txtfirstname.Text);
//        cmd.Parameters.AddWithValue("@email",txtemail.Text);
//        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
//        cmd.Parameters.AddWithValue("@password",txtpassword.Text);
//        cmd.ExecuteNonQuery();
//        con.Close();
//        txtfirstname.Text = "";
//        txtemail.Text = ""; 
//        txtpassword.Text = "";
//        txtmobile.Text = "";
//        Response.Redirect("C_productview.aspx");
//        }
//    }
//    protected void btnlogin_Click(object sender, EventArgs e)
//    {
//        mycon();
//        cmd = new MySqlCommand("select * from user_master where email=@em and password=@pass", con);
//        cmd.Parameters.AddWithValue("@em", txtem.Text);
//        cmd.Parameters.AddWithValue("@pass",txtpass.Text);
//        da = new MySqlDataAdapter(cmd);
//        ds = new DataSet();
//        da.Fill(ds);
//        if (ds.Tables[0].Rows.Count > 0)
//        {
//            Response.Redirect("C_productview.aspx"); 
//        }
//        else
//        {
//            Response.Write("<script>alert('Invalid Email And Password ')</script>");
//        }
//    }
}
