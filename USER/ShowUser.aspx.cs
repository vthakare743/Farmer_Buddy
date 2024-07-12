using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class USER_ShowUser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String q;

    //public void Showuser()
    //{
    //    if (!IsPostBack)
    //    {
    //        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
    //        cmd = new SqlCommand();
    //        con.Open();
    //        cmd.CommandText = "select first_name,last_name,address,e_mail,mobile_no,photo from Registration where id=@id";
    //        cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
    //        cmd.Connection = con;

    //        con.Close();
    //    }
    //}

    protected void Page_Load(object sender, EventArgs e)
    {
        //Showuser();
        //SqlDataSource1.SelectCommand = "select Registration.first_name,Registration.last_name,Registration.address,Registration.e_mail,Registration.mobile_no,Registration.photo from Registration where id= " + Request.QueryString["id"].ToString();

    }
   
}