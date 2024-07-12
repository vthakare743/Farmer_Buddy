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

public partial class ADMIN_Insurance : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select CroplnsuranceData.companyName,CroplnsuranceData.InsuranceName,CroplnsuranceData.description,CroplnsuranceData.website,CroplnsuranceData.photo from CroplnsuranceData where cid= " + Request.QueryString["cid"].ToString();
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        Session.Add("cid", Request.QueryString["cid"].ToString());
        Response.Redirect("Default2.aspx");
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewInsurance.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Delete CroplnsuranceData where cid=@cid";
        cmd.Parameters.AddWithValue("@cid", Request.QueryString["cid"].ToString());
        cmd.Connection = con;
        Label2.Text = "Delete Successfully";
        Label2.ForeColor = System.Drawing.Color.Red;
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Delete.aspx");
    }
}