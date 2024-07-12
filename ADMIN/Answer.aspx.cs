using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ADMIN_Answer : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string id;
    string username;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
        username = Request.QueryString["u"];

       // Response.Write(id + " " + username);

        txtQue.Text = getQuestion();
        txtname.Text = Request.QueryString["u"];
        txtmobile.Text = getMobile();

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
         con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
         cmd = new SqlCommand();
         con.Open();
         cmd.CommandText = "Update ExpertAdvice set answer=@answer where eid=@eid";
         cmd.Parameters.AddWithValue("@eid", id);
         cmd.Parameters.AddWithValue("@answer", txtans.Text);
         cmd.Connection = con;
         cmd.ExecuteNonQuery();
         lblmsg.Text = "Updated Successfully";
         con.Close();

       

         updateStatus();

        //BasicCode b = new BasicCode();
        //string receiver_mobile = getMobile();
        ////string msg = txtans.Text;
        //string msg = "Q:" + txtQue.Text + "%0a Ans: " + txtans.Text;

        //b.SendSms("FARMBD", receiver_mobile, msg);
        
        //updateStatus();
        
        //lblmsg.Text = "Answer sent on users mobile number successfully ! ";
        //txtQue.Text = "";
    }


    protected string getMobile()
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;

        cmd.CommandText = "select mobile_no from Registration where id=@id";

        cmd.Parameters.AddWithValue("@id", id);

        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        con.Close();

        if (obj == null)
        {
            return "Error";
        }
        else
        {
            return obj.ToString();
        }



    }

    protected string getQuestion()
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;

        cmd.CommandText = "select question from ExpertAdvice where eid=@eid";

        cmd.Parameters.AddWithValue("@eid", id);

        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        con.Close();

        if (obj == null)
        {
            return "Error";
        }
        else
        {
            return obj.ToString();
        }



    }

    protected string updateStatus()
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;

        cmd.CommandText = "update ExpertAdvice set status='Done' where eid=@eid";

        cmd.Parameters.AddWithValue("@eid", id);

        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        con.Close();

        if (obj == null)
        {
            return "Error";
        }
        else
        {
            return obj.ToString();
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Expertadvice.aspx");
    }
}