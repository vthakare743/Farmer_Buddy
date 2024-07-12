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

public partial class ADMIN_ShowArticles : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select ArticleData.article_title,ArticleData.description,ArticleData.authors,ArticleData.photo from ArticleData where aid= " + Request.QueryString["aid"].ToString();

    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        Session.Add("aid", Request.QueryString["aid"].ToString());
        Response.Redirect("Articles.aspx");
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Delete ArticleData where aid=@aid";
        cmd.Parameters.AddWithValue("@aid", Request.QueryString["aid"].ToString());
        cmd.Connection = con;
        Label2.Text = "Delete Successfully";
        Label2.ForeColor = System.Drawing.Color.Red;
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Delete.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewArticles.aspx");
    }
}