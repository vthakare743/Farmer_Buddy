using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class USER_ExpertAdvice : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void generateid()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["AR"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "select id from Expertadvice order by id desc";
        cmd.Connection = con;

        object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
            hfid.Value = "1";
        }
        else
        {
            hfid.Value = (Convert.ToInt32(obj) + 1).ToString();
        }
     //   Response.Write("hfID");

        con.Close();
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        generateid();
        con = new SqlConnection(ConfigurationManager.AppSettings["AR"]);
        con.Open();
        cmd = new SqlCommand();
        //cmd.CommandText = "insert into Expertadvice (id,que,details,photo,username,status) values(@id,@que,@des,@photo,@u,@st)";
        cmd.CommandText = "insert into Expertadvice (id,que,username,status) values(@id,@que,@u,@st)";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@id", hfid.Value);
        cmd.Parameters.AddWithValue("@que", txtque.Text);
        //cmd.Parameters.AddWithValue("@des", txtdes.Text);
        //cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@u", Session["username"]);
        cmd.Parameters.AddWithValue("@st", "Pending");

        int n=cmd.ExecuteNonQuery();
        if (n > 0)
        {
            string path = Server.MapPath("EPphoto");
            //string xpath= path+"\\"+FileUpload1.FileName;
            //FileUpload1.SaveAs(xpath);
            lblmsg.Text = "Question Submitted Succesfully";
        
        }
        con.Close();

        txtque.Text = "";

    }
}