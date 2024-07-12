using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class ADMIN_AddManagement : System.Web.UI.Page
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
        cmd.CommandText = "insert into ProductData(pid,pname,pdescription,mrp_amount,sell_amount,photo)values(@pid,@pname,@pdescription,@mrp,@sell,@photo)";
        cmd.Parameters.AddWithValue("@pid", b.generateID("pid", "ProductData"));
        cmd.Parameters.AddWithValue("@pname", txtpname.Text);
        cmd.Parameters.AddWithValue("@pdescription", txtDesc.Text);
        cmd.Parameters.AddWithValue("@mrp", txtMRP.Text);
        cmd.Parameters.AddWithValue("@sell", TextSell.Text);
        cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName);
        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('Record Saved Successfully !!!!!!');</script>");
        }

        txtpname.Text = "";
        txtDesc.Text = "";
        txtMRP.Text = "";
        TextSell.Text = "";

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