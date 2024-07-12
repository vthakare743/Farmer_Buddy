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

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    //String q;
    //BasicCode b = new BasicCode();
    //int num = 1;

    public void Showuser()
    {
        if (!IsPostBack)
        {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "select companyName,InsuranceName,description,website,photo from CroplnsuranceData where cid=@cid";
        cmd.Parameters.AddWithValue("@cid", Session["cid"].ToString());
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtcompany.Text = dr.GetString(0);
            txtInsurance.Text = dr.GetString(1);
            txtwebsite.Text = dr.GetString(3);
            txtdesc.Text = dr.GetString(2);
            Image1.ImageUrl = "photo/" + dr.GetString(4);

        }
        else
        {
            txtcompany.Text = "";
            txtInsurance.Text = "";
            txtwebsite.Text = "";
            txtdesc.Text = "";
        }
        con.Close();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Showuser();
    }

    protected void btnupdatee_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update CroplnsuranceData set companyName=@companyName,InsuranceName=@InsuranceName,description=@pd,website=@website where cid=@cid";
        cmd.Parameters.AddWithValue("@cid", Session["cid"].ToString());
        cmd.Parameters.AddWithValue("@companyName", txtcompany.Text);
        cmd.Parameters.AddWithValue("@InsuranceName", txtInsurance.Text);
        cmd.Parameters.AddWithValue("@website", txtwebsite.Text);
        cmd.Parameters.AddWithValue("@pd", txtdesc.Text);
        //cmd.Parameters.AddWithValue("@p", FileUpload1.FileName);
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label1.Text = "Updated Successfully";
        con.Close();

        txtcompany.Text = "";
        txtInsurance.Text = "";
        txtwebsite.Text = "";
        txtdesc.Text = "";

    }
    protected void btnPhotoUpdate_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update CroplnsuranceData set photo=@photo where cid=@cid";
        cmd.Parameters.AddWithValue("@cid", Session["cid"].ToString());
        cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName);
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();

        if (FileUpload1.HasFile)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("photo") + "/" + fileName);

            Label1.Text = "Image Uploaded";
            Label1.ForeColor = System.Drawing.Color.ForestGreen;
        }
        else
        {
            Label1.Text = "Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        Response.Redirect("Default2.aspx"); 
    }
   
}