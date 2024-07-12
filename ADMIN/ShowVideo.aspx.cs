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
using System.Drawing;

public partial class ADMIN_ShowVideo : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select VideosData.title,VideosData.link,VideosData.Udate,VideosData.description from VideosData where vid= " + Request.QueryString["vid"].ToString();
    }
    
    protected void btnedit_Click(object sender, EventArgs e)
    {
        Session.Add("vid", Request.QueryString["vid"].ToString());
        Response.Redirect("Videos.aspx");
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Delete VideosData where vid=@vid";
        cmd.Parameters.AddWithValue("vid", Request.QueryString["vid"].ToString());
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Delete.aspx");

    }
    
}