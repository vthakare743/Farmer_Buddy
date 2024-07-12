using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class ADMIN_User3 : System.Web.UI.Page
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
            cmd.CommandText = "select first_name,last_name,e_mail,address,photo from Registration where id=@id";
            cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtfirstname.Text = dr.GetString(0);
                txtlastname.Text = dr.GetString(1);
                txtemail.Text = dr.GetString(2);
                txtaddress.Text = dr.GetString(3);
                Image1.ImageUrl = "photo/" + dr.GetString(4);

            }
            else
            {
                txtfirstname.Text = "";
                txtlastname.Text = "";
                txtemail.Text = "";
                txtaddress.Text = "";
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
        cmd.CommandText = "Update Registration set first_name=@name,last_name=@last,e_mail=@email,address=@address where id=@id";
        cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
        cmd.Parameters.AddWithValue("@name", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@last", txtlastname.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@address", txtaddress.Text);

        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label1.Text = "Updated Successfully";
        con.Close();

        txtfirstname.Text = "";
        txtlastname.Text = "";
        txtemail.Text = "";
        txtaddress.Text = "";
    }
    protected void btnPhotoUpdate_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update Registration set photo=@p where id=@id";
        cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
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

        Response.Redirect("User3.aspx"); 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx");
    }
}