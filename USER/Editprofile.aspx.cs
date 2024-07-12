using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class USER_New : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    public void showuser()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["AR"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "select firstname,lastname,address,email,mobile from Registration where username=@u";
        cmd.Parameters.AddWithValue("@u", Session["username"].ToString());
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtfname.Text = dr.GetString(0);
            txtlname.Text = dr.GetString(1);
           txtaddress.Text = dr.GetString(2);
            txtemail.Text = dr.GetString(3);
            txtmobile.Text = dr.GetString(4);
        }
        else
        {
            txtfname.Text = "";
            txtlname.Text = "";
            txtaddress.Text = "";
            txtemail.Text = "";
            txtmobile.Text = "";
        }
        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            showuser();
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
         con = new SqlConnection(ConfigurationManager.AppSettings["AR"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "update Registration set firstname=@nm,lastname=@lname,address=@add,email=@em,mobile=@mb where username=@u";
        cmd.Parameters.AddWithValue("@u", Session["username"].ToString());
        cmd.Parameters.AddWithValue("@nm", txtfname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlname.Text);
        cmd.Parameters.AddWithValue("@add", txtaddress.Text);
        cmd.Parameters.AddWithValue("@em", txtemail.Text);
        cmd.Parameters.AddWithValue("@mb", txtmobile.Text);
        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {

            lblmsg.Text = "Record Update succesfully";
        }
        else
        {
            lblmsg.Text = "REcord not update";
        }
        con.Close();
    }
    }
