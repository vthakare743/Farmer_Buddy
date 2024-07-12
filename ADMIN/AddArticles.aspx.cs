using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class ADMIN_AddArticles : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void btnsub_Click1(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "insert into ArticleData(aid,article_title,description,authors,photo)values(@aid,@article_title,@description,@authors,@photo)";
        cmd.Parameters.AddWithValue("@aid", b.generateID("aid", "ArticleData"));
        cmd.Parameters.AddWithValue("@article_title", txtTitle.Text);
        cmd.Parameters.AddWithValue("@description", txtDesc.Text);
        cmd.Parameters.AddWithValue("@authors", txtAuthor.Text);
        cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName);
        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('Record Saved Successfully !!!!!!');</script>");
        }

        txtTitle.Text = "";
        txtDesc.Text = "";
        txtAuthor.Text = "";

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