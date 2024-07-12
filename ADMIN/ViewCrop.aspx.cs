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

public partial class ADMIN_ViewCrop : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select ProductData.pname,ProductData.pdescription,ProductData.mrp_amount,ProductData.sell_amount,ProductData.photo from ProductData where pid= " + Request.QueryString["pid"].ToString();

    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        Session.Add("pid", Request.QueryString["pid"].ToString());
        Response.Redirect("Crop.aspx");
    }
    //protected void btndelete_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Crop.aspx");
    //}
   
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Delete ProductData where pid=@pid";
        cmd.Parameters.AddWithValue("@pid", Request.QueryString["pid"].ToString());
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label2.Text = "Delete Successfully";
        Label2.ForeColor = System.Drawing.Color.Red;

        con.Close();

        Response.Redirect("Delete.aspx");
    }
}