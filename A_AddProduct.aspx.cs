using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.IO;


public partial class A_AddProduct : System.Web.UI.Page
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
    string path1 = "";

    void Fillcatdrop()
    {
        if (IsPostBack == false)
        {


            mycon();
            cmd = new MySqlCommand("Select * from category_master", con);
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            Dropcategory.DataSource = ds;
            Dropcategory.DataTextField = "category";
            Dropcategory.DataValueField = "cat_id";
            Dropcategory.DataBind();
            Dropcategory.Items.Insert(0, "---Select Category---");
            Dropcategory.Items[0].Value = "0";
            con.Close();
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            Fillcatdrop();



            if (Request.QueryString["edit"] != null)
            {
                mycon();
                cmd = new MySqlCommand("select * from product_master   where product_id=@pid", con);
                cmd.Parameters.AddWithValue("@pid", Request.QueryString["edit"].ToString());
                da = new MySqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    txtproductname.Text = ds.Tables[0].Rows[0]["product_name"].ToString();
                    txtdescription.Text = ds.Tables[0].Rows[0]["product_desc"].ToString();
                    txtnewprice.Text = ds.Tables[0].Rows[0]["product_new_price"].ToString();
                    txtoldprice.Text = ds.Tables[0].Rows[0]["product_old_price"].ToString();
                    txtproductcolor.Text = ds.Tables[0].Rows[0]["product_color"].ToString();
                    txtstoke.Text = ds.Tables[0].Rows[0]["product_stock"].ToString();
                    imgprint.ImageUrl = ds.Tables[0].Rows[0]["product_image"].ToString();
                    Dropstatus.Text = ds.Tables[0].Rows[0]["status"].ToString();

                    Fillcatdrop();
                    string cat = ds.Tables[0].Rows[0]["cat_id"].ToString();
                    Dropcategory.Text = cat;
                    Fillsubdrop();
                    string sub = ds.Tables[0].Rows[0]["sub_cat_id"].ToString();
                    Dropsubcategory.Text = sub;
                    Fillthirddrop();
                    string third = ds.Tables[0].Rows[0]["Third_cat_id"].ToString();
                    Dropthirdcategory.Text = third;
                    Fillbranddrop();
                    string brand = ds.Tables[0].Rows[0]["brand_id"].ToString();
                    Dropbrand.Text = brand;

                }

                con.Close();
            }
        }
    }
    void Fillsubdrop()
    {


        mycon();
        cmd = new MySqlCommand("Select * from sub_category_master where cat_id=@cid", con);
        cmd.Parameters.AddWithValue("@cid", Dropcategory.Text);
        da = new MySqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        Dropsubcategory.DataSource = ds;
        Dropsubcategory.DataTextField = "sub_category";
        Dropsubcategory.DataValueField = "sub_cat_id";
        Dropsubcategory.DataBind();
        Dropsubcategory.Items.Insert(0, "---Select Category---");
        Dropsubcategory.Items[0].Value = "0";
        con.Close();


    }
    protected void Dropcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        Fillsubdrop();
    }
    void Fillthirddrop()
    {

        mycon();
        cmd = new MySqlCommand("Select * from third_cat_master where cat_id=@cid", con);
        cmd.Parameters.AddWithValue("@cid", Dropcategory.Text);
        da = new MySqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        Dropthirdcategory.DataSource = ds;
        Dropthirdcategory.DataTextField = "Third_category";
        Dropthirdcategory.DataValueField = "Third_cat_id";
        Dropthirdcategory.DataBind();
        Dropthirdcategory.Items.Insert(0, "---Select Third-Category---");
        Dropthirdcategory.Items[0].Value = "0";
        con.Close();
    }
    protected void Dropsubcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        Fillthirddrop();
    }
    void Fillbranddrop()
    {
        mycon();
        cmd = new MySqlCommand("Select * from brand_master ", con);
        da = new MySqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        Dropbrand.DataSource = ds;
        Dropbrand.DataTextField = "brand";
        Dropbrand.DataValueField = "brand_id";
        Dropbrand.DataBind();
        Dropbrand.Items.Insert(0, "---Select Third-Category---");
        Dropbrand.Items[0].Value = "0";
        con.Close();
    }
    protected void Dropthirdcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        Fillbranddrop();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        mycon();
        if (Request.QueryString["edit"] != null)
        {
            cmd = new MySqlCommand("Update  product_master set product_name=@pname,cat_id=@cid,sub_cat_id=@sid,Third_cat_id=@tid,brand_id=@bid,product_desc=@pdec,product_old_price=@plodp,product_new_price=@pnewp,product_color=@pcolor,product_stock=@pstoke,product_image=@pimg,status=@st where product_id=@pid", con);
            cmd.Parameters.AddWithValue("@pname", txtproductname.Text);
            cmd.Parameters.AddWithValue("@cid", Dropcategory.Text);
            cmd.Parameters.AddWithValue("@sid", Dropsubcategory.Text);
            cmd.Parameters.AddWithValue("@tid", Dropthirdcategory.Text);
            cmd.Parameters.AddWithValue("@bid", Dropbrand.Text);
            cmd.Parameters.AddWithValue("@pdec", txtdescription.Text);
            cmd.Parameters.AddWithValue("@plodp", txtoldprice.Text);
            cmd.Parameters.AddWithValue("@pnewp", txtnewprice.Text);
            cmd.Parameters.AddWithValue("@pcolor", txtproductcolor.Text);
            cmd.Parameters.AddWithValue("@pstoke", txtstoke.Text);

            if (fileuploadpro.HasFile)
            {
                fileuploadpro.SaveAs(Server.MapPath("~/productimg/" + fileuploadpro.FileName));
                imgprint.ImageUrl = fileuploadpro.FileName;
            }
            cmd.Parameters.AddWithValue("@pimg", imgprint.ImageUrl);
            cmd.Parameters.AddWithValue("@st", Dropstatus.Text);
            cmd.Parameters.AddWithValue("@pid", Request.QueryString["edit"].ToString());
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Successfully Update')</script>");
        }
        else
        {




            cmd = new MySqlCommand("Insert Into product_master Values(Null,@pname,@cid,@sid,@tid,@bid,@pdec,@plodp,@pnewp,@pcolor,@pstoke,@pimg,@st,Now())", con);
            cmd.Parameters.AddWithValue("@pname", txtproductname.Text);
            cmd.Parameters.AddWithValue("@cid", Dropcategory.Text);
            cmd.Parameters.AddWithValue("@sid", Dropsubcategory.Text);
            cmd.Parameters.AddWithValue("@tid", Dropthirdcategory.Text);
            cmd.Parameters.AddWithValue("@bid", Dropbrand.Text);
            cmd.Parameters.AddWithValue("@pdec", txtdescription.Text);
            cmd.Parameters.AddWithValue("@plodp", txtoldprice.Text);
            cmd.Parameters.AddWithValue("@pnewp", txtnewprice.Text);
            cmd.Parameters.AddWithValue("@pcolor", txtproductcolor.Text);
            cmd.Parameters.AddWithValue("@pstoke", txtstoke.Text);

            if (fileuploadpro.HasFile)
            {
                fileuploadpro.SaveAs(Server.MapPath("~/productimg/" + fileuploadpro.FileName));
                imgprint.ImageUrl = "~/productimg/" + fileuploadpro.FileName;

            }

            cmd.Parameters.AddWithValue("@pimg", imgprint.ImageUrl);
            cmd.Parameters.AddWithValue("@st", Dropstatus.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            txtproductname.Text = "";
            Dropcategory.SelectedIndex = 0;
            Dropsubcategory.SelectedIndex = 0;
            Dropthirdcategory.SelectedIndex = 0;
            Dropbrand.SelectedIndex = 0;
            txtdescription.Text = "";
            txtoldprice.Text = "";
            txtnewprice.Text = "";
            txtproductcolor.Text = "";
            txtstoke.Text = "";
            imgprint.ImageUrl = "";
            Dropstatus.SelectedIndex = 0;
            Response.Write("<script>alert('Successfully Add Product')</script>");
        }
    }
}