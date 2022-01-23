using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class C_productview : System.Web.UI.Page
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
        if (IsPostBack == false)
        {


            mycon();
            cmd = new MySqlCommand("select * from product_master", con);
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            con.Close();
        }

    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {


        if (e.CommandName == "addtocart")
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("drp"));
            dlist.SelectedValue.ToString();
            string id = dlist.Text;
            Response.Redirect("C_AddtoCart.aspx?cart=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }

    }

    protected void btnatddtocat_Click(object sender, EventArgs e)
    {


    }

}