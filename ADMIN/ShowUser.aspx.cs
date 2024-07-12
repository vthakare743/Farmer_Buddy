using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
using System.Drawing;

public partial class ADMIN_ShowUser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select Registration.first_name,Registration.last_name,Registration.e_mail,Registration.address,Registration.photo from Registration where id= " + Request.QueryString["id"].ToString();
    }
   

    protected void btnedit_Click(object sender, EventArgs e)
    {
        Session.Add("id", Request.QueryString["id"].ToString());
        Response.Redirect("User3.aspx");
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Delete Registration where id=@id";
        cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label2.Text = "Delete Successfully";
        Label2.ForeColor = System.Drawing.Color.Red;

        con.Close();

        Response.Redirect("Delete.aspx");
    }
}