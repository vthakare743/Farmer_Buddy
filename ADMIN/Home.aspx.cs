
 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class ADMIN_Home : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    //BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {

        UserShow();
        VideoShow();
        Scheme();
        Article();
        Management();
        Insurance();
    }

    public void UserShow()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Select COUNT(*) From Registration ";
        cmd.Connection = con;
        //SqlDataReader dr = cmd.ExecuteReader();
        int count = (int)cmd.ExecuteScalar();
        lblUserCount.Text = " " + count;
        con.Close();

    }

    public void VideoShow()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Select COUNT(*) From VideosData ";
        cmd.Connection = con;
        //SqlDataReader dr = cmd.ExecuteReader();
        int count = (int)cmd.ExecuteScalar();
        lblvideo.Text = " " + count;
        con.Close();
    }

    public void Scheme()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Select COUNT(*) From GovScemeData ";
        cmd.Connection = con;
        //SqlDataReader dr = cmd.ExecuteReader();
        int count = (int)cmd.ExecuteScalar();
        lblscheme.Text = " " + count;
        con.Close();
    }

    public void Article()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Select COUNT(*) From ArticleData ";
        cmd.Connection = con;
        //SqlDataReader dr = cmd.ExecuteReader();
        int count = (int)cmd.ExecuteScalar();
        lblarticle.Text = " " + count;
        con.Close();
    }

    public void Management()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Select COUNT(*) From ProductData ";
        cmd.Connection = con;
        //SqlDataReader dr = cmd.ExecuteReader();
        int count = (int)cmd.ExecuteScalar();
        lblmanage.Text = " " + count;
        con.Close();
    }

    public void Insurance()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Select COUNT(*) From CroplnsuranceData ";
        cmd.Connection = con;
        //SqlDataReader dr = cmd.ExecuteReader();
        int count = (int)cmd.ExecuteScalar();
        lblinsurance.Text = " " + count;
        con.Close();
    }

}