using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A_ProductList : System.Web.UI.Page
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
        cmd = new MySqlCommand("SELECT * FROM product_master AS p INNER JOIN category_master AS c ON p.cat_id=c.cat_id INNER JOIN sub_category_master AS sc ON p.sub_cat_id=sc.sub_cat_id INNER JOIN third_cat_master AS tc ON p.Third_cat_id=tc.Third_cat_id INNER JOIN brand_master AS bm ON p.brand_id=bm.brand_id; ", con);
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
        cmd = new MySqlCommand("Delete from product_master where product_id=@pid", con);
        cmd.Parameters.AddWithValue("@pid", dele);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Succefully Delete Data..')</script>");
    }
}