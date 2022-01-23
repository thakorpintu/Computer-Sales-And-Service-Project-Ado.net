using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A_AddBrand : System.Web.UI.Page
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
            cmd = new MySqlCommand("select * from brand_master   where brand_id=@bid", con);
            cmd.Parameters.AddWithValue("@bid", Request.QueryString["edit"].ToString());
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtbrand.Text = ds.Tables[0].Rows[0]["brand"].ToString();
                Dropstatus.SelectedValue = ds.Tables[0].Rows[0]["status"].ToString();
            }

            con.Close();
        }


    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        mycon();

        if (Request.QueryString["edit"] != null)
        {
            cmd = new MySqlCommand("Update  brand_master set brand=@bd,status=@st where brand_id=@bid", con);
            cmd.Parameters.AddWithValue("@bd", txtbrand.Text);
            cmd.Parameters.AddWithValue("@st", Dropstatus.Text);
            cmd.Parameters.AddWithValue("@bid", Request.QueryString["edit"].ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            txtbrand.Text = "";
            Dropstatus.SelectedIndex = 0;
            Response.Write("<script>alert('Successfully Update')</script>");
        }
        else
        {



            cmd = new MySqlCommand("select * from brand_master where brand=@bd", con);
            cmd.Parameters.AddWithValue("@bd", txtbrand.Text);
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script>alert('All Redy Exits Brand')</script>");
            }
            else
            {
                cmd = new MySqlCommand("Insert into brand_master values(Null,@brand,@st,Now())", con);
                cmd.Parameters.AddWithValue("@brand", txtbrand.Text);
                cmd.Parameters.AddWithValue("@st", Dropstatus.Text);
                cmd.ExecuteNonQuery();
                txtbrand.Text = "";
                Dropstatus.SelectedIndex = 0;
                con.Close();
                Response.Write("<script>alert('Successfully Add Brand')</script>");

            }

        }
    }
}