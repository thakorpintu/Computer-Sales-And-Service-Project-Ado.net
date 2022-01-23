using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A_SubCategoryList : System.Web.UI.Page
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
        mycon();
        cmd = new MySqlCommand("select * from sub_category_master", con);
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
        cmd = new MySqlCommand("Delete from sub_category_master where sub_cat_id=@scid", con);
        cmd.Parameters.AddWithValue("@scid", dele);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Succefully Delete Data..')</script>");
 
    }
}