using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "insert into Registration(id,first_name,last_name,address,e_mail,mobile_no,username,password,question,answer,user_type,photo,veriefied)values(@id,@first_name,@last_name,@address,@e_mail,@mobile_no,@username,@password,@question,@answer,@user_type,@photo,@veriefied)";
        cmd.Parameters.AddWithValue("@id", b.generateID("id", "Registration"));
        cmd.Parameters.AddWithValue("@first_name", txtname.Text);
        cmd.Parameters.AddWithValue("@last_name", txtname1.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@e_mail", txtemail.Text);
        cmd.Parameters.AddWithValue("@mobile_no", txtphone.Text);
        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        cmd.Parameters.AddWithValue("@password", txtpwd.Text);
        cmd.Parameters.AddWithValue("@question", ddlquestion.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@answer", txtAnswer.Text);
        cmd.Parameters.AddWithValue("@user_type", ddlUserType.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@veriefied", 0);

        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('Record Saved Successfully !!!!!!');</script>");
        }

        txtname.Text = "";
        txtname1.Text = "";
        txtAddress.Text = "";
        txtemail.Text = "";
        txtphone.Text = "";
        txtusername.Text = "";
        txtpwd.Text = "";
        txtAnswer.Text = "";
    
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