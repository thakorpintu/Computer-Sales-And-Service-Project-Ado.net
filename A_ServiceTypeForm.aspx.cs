using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Admin_A_ServiceTypeForm : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection con;
    MySqlDataAdapter da;
    DataSet ds;
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
                cmd = new MySqlCommand("select * from service_type_master where service_type_id=@stid", con);
                cmd.Parameters.AddWithValue("@stid", Request.QueryString["edit"].ToString());
                da = new MySqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    dropmaincategory.Text = ds.Tables[0].Rows[0]["main_category_id"].ToString();
                    dropsubcategory.Text = ds.Tables[0].Rows[0]["sub_category_id"].ToString();
                    txtservicetype.Text = ds.Tables[0].Rows[0]["service_type"].ToString();
                    dropStatus.Text = ds.Tables[0].Rows[0]["status"].ToString();

                }
                con.Close();
            }
        

        if (IsPostBack == false)
        {
            mycon();
            cmd = new MySqlCommand("select * from main_category_master", con);
            da = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            dropmaincategory.DataSource = ds;
            dropmaincategory.DataTextField = "main_category";
            dropmaincategory.DataValueField = "main_category_id";
            dropmaincategory.DataBind();
            dropmaincategory.Items.Insert(0, "---Select Main Category---");
            dropmaincategory.Items[0].Value = "0";


            con.Close();
        }

        


    }
    protected void dropmaincategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        mycon();
        cmd = new MySqlCommand("select * from sub_category_master where main_category_id=@mcid ", con);
        cmd.Parameters.AddWithValue("@mcid", dropmaincategory.Text);
        da = new MySqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        dropsubcategory.DataSource = ds;
        dropsubcategory.DataTextField = "sub_category";
        dropsubcategory.DataValueField = "sub_category_id";
        dropsubcategory.DataBind();
        dropsubcategory.Items.Insert(0, "---Select Main Category---");
        dropsubcategory.Items[0].Value = "0";
        con.Close();
        pnl_subcat.Visible = true;
    }
    bool flag = false;
    protected void lnkSave_Click(object sender, EventArgs e)
    {
        mycon();
        cmd = new MySqlCommand("select * from service_type_master where main_category_id=@mid and sub_category_id=@sid and service_type=@stype", con);
        cmd.Parameters.AddWithValue("@mid", dropmaincategory.Text);
        cmd.Parameters.AddWithValue("@sid", dropsubcategory.Text);
        cmd.Parameters.AddWithValue("@stype",txtservicetype.Text);
        da = new MySqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);

        if(ds.Tables[0].Rows.Count>0)
        {
            if(Request.QueryString["edit"]!=null)
            {
                cmd = new MySqlCommand("select * from service_type_master where  main_category_id=@mid and sub_category_id=@sid and service_type=@stype and service_type_id=@serviceid", con);
                cmd.Parameters.AddWithValue("@mid",dropmaincategory.Text);
                cmd.Parameters.AddWithValue("@sid",dropsubcategory.Text);
                cmd.Parameters.AddWithValue("@stype",txtservicetype.Text);
                cmd.Parameters.AddWithValue("@serviceid",Request.QueryString["edit"]).ToString();
                da = new MySqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
                if(ds.Tables[0].Rows.Count>0)
                {
                    flag = true;
                }
                else
                {
                    flag = false;
                }
            }
            else
            {
                flag = false;
            }
        }
        else
        {
            flag = true;
        }

        if(flag==false)
        {
            Response.Write("<script>alert('THIS DATA IS ALREADY EXITS')</script>");
        }
        else
        {
            if(Request.QueryString["edit"]!=null)
            {
                mycon();
                cmd = new MySqlCommand("update  service_type_master set main_category_id=@mid,sub_category_id=@sid,service_type=@stype,status=@status", con);
                cmd.Parameters.AddWithValue("@mid", dropmaincategory.Text);
                cmd.Parameters.AddWithValue("@sid", dropsubcategory.Text);
                cmd.Parameters.AddWithValue("@stype", txtservicetype.Text);
                cmd.Parameters.AddWithValue("@status", dropStatus.Text);
                con.Close();
                Response.Write("<script>alert('SUCCESSFULLY DATA UPADTE')</script>");
            }
            else
            {
                mycon();
                cmd = new MySqlCommand("Insert into service_type_master values(NULL,@main_category_id,@sub_category_id,@service_type,@status)", con);
                cmd.Parameters.AddWithValue("@main_category_id", dropmaincategory.Text);
                cmd.Parameters.AddWithValue("@sub_category_id", dropsubcategory.Text);
                cmd.Parameters.AddWithValue("@service_type", txtservicetype.Text);
                cmd.Parameters.AddWithValue("@status", dropStatus.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('SUCCESSFULLY DATA INSERT')</script>");
                
            }
        }



       //    con.Close();
    }
}