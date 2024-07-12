using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (ddlUserType.SelectedItem.ToString() == "Farmer")
        {
            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Registration where username=@u and password=@p";
            cmd.Parameters.AddWithValue("@u", txtusername.Text.Trim());
            cmd.Parameters.AddWithValue("@p", txtpwd.Text.Trim());

            object obj = cmd.ExecuteScalar();
            if (obj==null)
            {
                lblmsg.Text = "Invalid id and password";
            }
            else
            {
                Session.Add("password", txtpwd.Text);
                Session.Add("username", txtusername.Text);
                Response.Redirect("USER/Default.aspx");
            }
            con.Close();
        }
        if (ddlUserType.SelectedItem.ToString() == "Trader")
        {
            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Registration where username=@u and password=@p";
            cmd.Parameters.AddWithValue("@u", txtusername.Text.Trim());
            cmd.Parameters.AddWithValue("@p", txtpwd.Text.Trim());

            object obj = cmd.ExecuteScalar();
            if (obj == null)
            {
                lblmsg.Text = "Invalid id and password";
            }
            else
            {

                Session.Add("password", txtpwd.Text);
                Session.Add("username", txtusername.Text);
                Response.Redirect("USER/Default.aspx");
            }
            con.Close();
        }
      
    }
   

    }
