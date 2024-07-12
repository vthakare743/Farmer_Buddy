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

public partial class ADMIN_ShowScheme : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select GovScemeData.schemeName,GovScemeData.description,GovScemeData.amount,GovScemeData.photo from GovScemeData where gid= " + Request.QueryString["gid"].ToString();

    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        Session.Add("gid", Request.QueryString["gid"].ToString());
        Response.Redirect("Schemes.aspx");
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewSchemes.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Delete GovScemeData where gid=@gid";
        cmd.Parameters.AddWithValue("@gid", Request.QueryString["gid"].ToString());
        cmd.Connection = con;
        Label2.Text = "Delete Successfully";
        Label2.ForeColor = System.Drawing.Color.Red;
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Delete.aspx");
    }
}