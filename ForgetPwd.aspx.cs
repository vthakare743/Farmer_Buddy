﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
public partial class ForgetPwd : System.Web.UI.Page
{
    BasicCode b = new BasicCode();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnpwd_Click(object sender, EventArgs e)
    {
       // string name = Request.Form["txtdate"]; //main code

       // System.DateTime myDate = new System.DateTime();
       // myDate = Convert.ToDateTime(name);
       //// hfdate.Value = myDate.ToString("dd/MM/yyyy");
       // Response.Write(myDate.ToString("dd/MM/yyyy"));

        checkOtp();

        txtEmpid.Text = "";
        txtOtp.Text = "";
           

    }
    protected void btnOtp_Click(object sender, EventArgs e)
    {
      
         Random random = new Random();
    
        int otp = random.Next(1000,9999);
        //Response.Write(otp);

        try
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
            SqlCommand cmd = new SqlCommand();
            cn.Open();

            cmd.CommandText = "insert into OtpData(otp,username,status)values(@otp,@username,@status)";

            cmd.Parameters.AddWithValue("@otp", otp);
            cmd.Parameters.AddWithValue("@username", txtEmpid.Text);
            cmd.Parameters.AddWithValue("@status","Pending");

            cmd.Connection = cn;

            int n = cmd.ExecuteNonQuery();

            cn.Close();

            if (n > 0)
            {
                SendOtp(otp);
            }
            cn.Close();
            txtOtp.Enabled = true;
        }
        catch (Exception er)
        {
            Response.Write(er.ToString());
        }

    }

    protected void checkOtp()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        SqlCommand cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "select otp from OtpData where username=@username and otp=@otp and status='Pending'";

        cmd.Parameters.AddWithValue("@otp",txtOtp.Text);
        cmd.Parameters.AddWithValue("@username", txtEmpid.Text);

        cmd.Connection = cn;

        object obj = cmd.ExecuteScalar();
        cn.Close();
        if (obj == null)
        {
            lblmsg.Text = "OTP no longer valid !";
        }
        else
        {
            SendPassword();
        }

        
    }

    protected void SendOtp(int otpno)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        SqlCommand cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "select mobile from Registration where username=@username";

        cmd.Parameters.AddWithValue("@username", txtEmpid.Text);

        cmd.Connection = cn;

        Object obj = cmd.ExecuteScalar();
        if (obj==null)
        {
            lblmsg.Text = "Invalid Username!";   
        }
        else
        {            
            string mob = obj.ToString();
            Response.Write(mob);
            string msg = "The OTP for forgot password phase is : " + otpno + ". Do not share with anyone.";
            Response.Write(msg);
            b.SendSms("FARMBD", mob, msg);
        }

        cn.Close();
    }

    protected void SendPassword()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        SqlCommand cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "select mobile,password from Registration where username=@username";
        
        cmd.Parameters.AddWithValue("@username", txtEmpid.Text);

        cmd.Connection = cn;

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string mob = dr.GetString(0);
            string pwd = dr.GetString(1);
            string msg = "Your Login Credential are : %0a Username : " + txtEmpid.Text + " password : " + pwd;
            b.SendSms("FARMBD", mob, msg);
        }
        else
        {
            lblmsg.Text = "OTP no longer valid !";            
        }

        cn.Close();
    }

}