using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class ADMIN_CropInsurance : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "insert into CroplnsuranceData(cid,companyName,InsuranceName,description,website,photo)values(@cid,@companyName,@InsuranceName,@description,@website,@photo)";
        cmd.Parameters.AddWithValue("@cid", b.generateID("cid", "CroplnsuranceData"));
        cmd.Parameters.AddWithValue("@companyName", txtCompany.Text);
        cmd.Parameters.AddWithValue("@InsuranceName", txtInsurance.Text);
        cmd.Parameters.AddWithValue("@description", txtdesc.Text);
        cmd.Parameters.AddWithValue("@website", txtlink.Text);
        cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName);
        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('Record Saved Successfully !!!!!!');</script>");
        }

        txtCompany.Text = "";
        txtInsurance.Text = "";
        txtdesc.Text = "";
        txtlink.Text = "";

        if (FileUpload1.HasFile)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/ADMIN/photo/") + fileName);

            Label1.Text = "Image Uploaded";
            Label1.ForeColor = System.Drawing.Color.ForestGreen;
        }
        else
        {
            Label1.Text = "Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;
        }  
    }
   
}