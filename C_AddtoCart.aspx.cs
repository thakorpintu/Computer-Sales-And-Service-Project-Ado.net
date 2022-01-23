using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class C_AddtoCart : System.Web.UI.Page
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
    public decimal grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        decimal gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToDecimal(dt.Rows[i]["totalprice"].ToString());
            gtotal = Convert.ToDecimal(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }
    protected void Page_Load(object sender, EventArgs e)
    {




        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("srno");
            dt.Columns.Add("product_id");
            dt.Columns.Add("product_name");
            dt.Columns.Add("product_new_price");
            dt.Columns.Add("product_desc");
            dt.Columns.Add("quantity");
            dt.Columns.Add("product_image");
            dt.Columns.Add("totalprice");


            if (Request.QueryString["cart"] != null)
            {
                if (Session["Buyitems"] == null)
                {
                   


                        dr = dt.NewRow();
                        mycon();
                        cmd = new MySqlCommand("select * from product_master where product_id=@pid", con);
                        cmd.Parameters.AddWithValue("@pid", Request.QueryString["cart"].ToString());

                        da = new MySqlDataAdapter();
                        da.SelectCommand = (cmd);
                        ds = new DataSet();
                        da.Fill(ds);
                        dr["srno"] = 1;
                        dr["product_id"] = ds.Tables[0].Rows[0]["product_id"].ToString();
                        dr["product_name"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                        dr["product_new_price"] = ds.Tables[0].Rows[0]["product_new_price"].ToString();
                        dr["product_desc"] = ds.Tables[0].Rows[0]["product_desc"].ToString();
                        dr["product_image"] = ds.Tables[0].Rows[0]["product_image"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        decimal price = Convert.ToDecimal(ds.Tables[0].Rows[0]["product_new_price"].ToString());
                        decimal quantity = Convert.ToDecimal(Request.QueryString["quantity"].ToString());
                        decimal totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("C_AddtoCart.aspx");
                    

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;
                    dr = dt.NewRow();
                    mycon();
                    cmd = new MySqlCommand("select * from product_master where product_id=@pid", con);
                    cmd.Parameters.AddWithValue("@pid", Request.QueryString["cart"].ToString());
                    da = new MySqlDataAdapter();
                    da.SelectCommand = cmd;
                    ds = new DataSet();
                    da.Fill(ds);
                    dr["srno"] = sr + 1;
                    dr["product_id"] = ds.Tables[0].Rows[0]["product_id"].ToString();
                    dr["product_name"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                    dr["product_image"] = ds.Tables[0].Rows[0]["product_image"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["product_new_price"] = ds.Tables[0].Rows[0]["product_new_price"].ToString();
                    dr["product_desc"] = ds.Tables[0].Rows[0]["product_desc"].ToString();
                    decimal price = Convert.ToDecimal(ds.Tables[0].Rows[0]["product_new_price"].ToString());
                    decimal quantity = Convert.ToDecimal(Request.QueryString["quantity"].ToString());
                    decimal totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    GridView1.DataSource = dt;
                    Response.Redirect("C_AddtoCart.aspx");
                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }


            }


        }

    }
}