using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class ADMIN_Videos : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();

    public void Showuser()
    {
        if (!IsPostBack)
        {
            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "select title,link,Udate,description from VideosData where vid=@vid";
            cmd.Parameters.AddWithValue("@vid", Session["vid"].ToString());
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtTitle.Text = dr.GetString(0);
                txtLink.Text = dr.GetString(1);
                txtDate.Text = dr.GetString(2);
                txtdesc.Text = dr.GetString(3);

            }
            else
            {
                txtTitle.Text = "";
                txtLink.Text = "";
                txtDate.Text = "";
                txtdesc.Text = "";
            }
            con.Close();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Showuser();
    }
    protected void btnupdatee_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update VideosData set title=@title,link=@link,Udate=@Udate,description=@description where vid=@vid";
        cmd.Parameters.AddWithValue("@vid", Session["vid"].ToString());
        cmd.Parameters.AddWithValue("@title", txtTitle.Text);
        cmd.Parameters.AddWithValue("@link", txtLink.Text);
        cmd.Parameters.AddWithValue("@Udate", txtDate.Text);
        cmd.Parameters.AddWithValue("@description", txtdesc.Text);

        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label1.Text = "Updated Successfully";
        con.Close();

        txtTitle.Text = "";
        txtLink.Text = "";
        txtDate.Text = "";
        txtdesc.Text = "";
    }
   
}