using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class ADMIN_AddVideo : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
         generate_ID();
    }
    private void generate_ID()
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        // con = new SqlConnection(ConfigurationManager.AppSettings["LIS_local"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select vid from  VideosData order by vid desc";
        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
            hfId.Value = "1";
        }
        else
        {
            int n = Convert.ToInt32(obj);
            n = n + 1;
            hfId.Value = n.ToString();
        }
        con.Close();
    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        // SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS_local"]);
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into VideosData(vid,title,link,Udate,description)values(@vid,@title,@link,@date,@description)";

        cmd.Parameters.AddWithValue("@vid", hfId.Value);
        cmd.Parameters.AddWithValue("@title", txtTitle.Text);
        cmd.Parameters.AddWithValue("@link", txtUrl.Text);
        cmd.Parameters.AddWithValue("@description", txtdesc.Text);
        cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());

        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {
            lblmsg.Text = "Video Uploaded Successfully !";
            txtTitle.Text = "";
            txtUrl.Text = "";
            txtdesc.Text = "";
        }
        else
        {
            Response.Write("Error!");
        }

        con.Close();
    }

}