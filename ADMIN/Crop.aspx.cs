using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class ADMIN_Crop : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    //int num = 1;

    public void Showuser()
    {
        if (!IsPostBack)
        {
            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "select pname,pdescription,mrp_amount,sell_amount,photo from ProductData where pid=@pid";
            cmd.Parameters.AddWithValue("@pid", Session["pid"].ToString());
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtname.Text = dr.GetString(0);
                txtmrp.Text = dr.GetString(2);
                txtsell.Text = dr.GetString(3);
                txtdesc.Text = dr.GetString(1);
                Image1.ImageUrl = "photo/" + dr.GetString(4);

            }
            else
            {
                txtname.Text = "";
                txtmrp.Text = "";
                txtsell.Text = "";
                txtdesc.Text = "";
            }
            con.Close();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Showuser();
        //Label1.Text = Session["pid"].ToString();
    }
     
   

    protected void btnupdatee_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update ProductData set pname=@name,pdescription=@pd,mrp_amount=@mrp,sell_amount=@sell where pid=@pid";
        cmd.Parameters.AddWithValue("@pid", Session["pid"].ToString());
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@pd", txtdesc.Text);
        cmd.Parameters.AddWithValue("@mrp", txtmrp.Text);
        cmd.Parameters.AddWithValue("@sell", txtsell.Text);
   
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label1.Text = "Updated Successfully";
        con.Close();

        txtname.Text = "";
        txtmrp.Text = "";
        txtsell.Text = "";
        txtdesc.Text = "";
    }

    protected void btnPhotoUpdate_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update ProductData set photo=@p where pid=@pid";
        cmd.Parameters.AddWithValue("@pid", Session["pid"].ToString());
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

        Response.Redirect("Crop.aspx"); 
     
    }
    
}