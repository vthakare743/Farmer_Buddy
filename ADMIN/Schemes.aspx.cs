using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;

public partial class ADMIN_Schemes : System.Web.UI.Page
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
            cmd.CommandText = "select schemeName,description,amount,photo from GovScemeData where gid=@gid";
            cmd.Parameters.AddWithValue("@gid", Session["gid"].ToString());
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtname.Text = dr.GetString(0);
                txtamount.Text = dr.GetString(2);
                txtdesc.Text = dr.GetString(1);
                Image1.ImageUrl = "photo/" + dr.GetString(3);

            }
            else
            {
                txtname.Text = "";
                txtamount.Text = "";
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
        cmd.CommandText = "Update GovScemeData set schemeName=@schemeName,description=@description,amount=@amount where gid=@gid";
        cmd.Parameters.AddWithValue("@gid", Session["gid"].ToString());
        cmd.Parameters.AddWithValue("@schemeName", txtname.Text);
        cmd.Parameters.AddWithValue("@description", txtdesc.Text);
        cmd.Parameters.AddWithValue("@amount", txtamount.Text);

        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label1.Text = "Updated Successfully";
        con.Close();

        txtname.Text = "";
        txtamount.Text = "";
        txtdesc.Text = "";

    }
    protected void btnPhotoUpdate_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update GovScemeData set photo=@p where gid=@gid";
        cmd.Parameters.AddWithValue("@gid", Session["gid"].ToString());
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

        Response.Redirect("Schemes.aspx"); 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Viewschemes.aspx");
    }
}