using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class ADMIN_Articles : System.Web.UI.Page
{
     SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    public void Showuser()
    {
        if (!IsPostBack)
        {
            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "select article_title,description,authors,photo from ArticleData where aid=@aid";
            cmd.Parameters.AddWithValue("@aid", Session["aid"].ToString());
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtarticles.Text = dr.GetString(0);
                txtauthors.Text = dr.GetString(2);
                txtdesc.Text = dr.GetString(1);
                Image1.ImageUrl = "photo/" + dr.GetString(3);

            }
            else
            {
                txtarticles.Text = "";
                txtauthors.Text = "";
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
        cmd.CommandText = "Update ArticleData set article_title=@article_title,description=@description,authors=@authors where aid=@aid";
        cmd.Parameters.AddWithValue("@aid", Session["aid"].ToString());
        cmd.Parameters.AddWithValue("@article_title", txtarticles.Text);
        cmd.Parameters.AddWithValue("@description", txtauthors.Text);
        cmd.Parameters.AddWithValue("@authors", txtdesc.Text);

        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label1.Text = "Updated Successfully";
        con.Close();

        txtarticles.Text = "";
        txtauthors.Text = "";
        txtdesc.Text = "";
    }
    protected void btnPhotoUpdate_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update ArticleData set photo=@p where aid=@aid";
        cmd.Parameters.AddWithValue("@aid", Session["aid"].ToString());
        cmd.Parameters.AddWithValue("@p", FileUpload1.FileName);
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();


        if (FileUpload1.HasFile)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("photo") + "/" + fileName);

            Label2.Text = "Image Uploaded";
            Label2.ForeColor = System.Drawing.Color.ForestGreen;
        }
        else
        {
            Label2.Text = "Please Select your file";
            Label2.ForeColor = System.Drawing.Color.Red;
        }

        Response.Redirect("Articles.aspx"); 
    }
    
}