using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A_BrandList : System.Web.UI.Page
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

    protected void Page_Load(object sender, EventArgs e)
    {
        

        mycon();
        cmd = new MySqlCommand("select * from brand_master", con);
        da = new MySqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string dele = e.CommandArgument.ToString();
        mycon();
        cmd = new MySqlCommand("Delete from brand_master where brand_id=@bid", con);
        cmd.Parameters.AddWithValue("@bid", dele);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Succefully Delete Data..')</script>");
 
    }
}