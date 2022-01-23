using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class C_ProductDetail : System.Web.UI.Page
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
        if(Request.QueryString["view"]!=null)
        {
            cmd = new MySqlCommand("SELECT * FROM product_master AS p INNER JOIN category_master AS c ON p.cat_id=c.cat_id INNER JOIN sub_category_master AS sc ON p.sub_cat_id=sc.sub_cat_id INNER JOIN third_cat_master AS tc ON p.Third_cat_id=tc.Third_cat_id INNER JOIN brand_master AS bm ON p.brand_id=bm.brand_id where product_id=@pid ", con);

            cmd.Parameters.AddWithValue("@pid", Request.QueryString["view"].ToString());
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            con.Close();
        }
        
    }
}