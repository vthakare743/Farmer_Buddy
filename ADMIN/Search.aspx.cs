using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class ADMIN_Search : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String q;

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    ddlSelect.Items.Add("Select");
        //    //ddlSubtype.Items.Add("Select");
        //    con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        //    cmd = new SqlCommand();
        //    con.Open();
        //    cmd.CommandText = "select article_title from ArticleData";
        //    //cmd.Parameters.AddWithValue("@article_title", ddlSelect.SelectedItem.Text);
        //    //cmd.CommandText = "select distinct(article_title) from ArticleData";
        //    cmd.Connection = con;
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        ddlSelect.Items.Add(dr.GetString(0).ToString());
        //    }

        //    con.Close();

        //}
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

        if (ddlSelect.SelectedValue.ToString() == "Articles")
        {
            GridView1.Visible = true;
            SqlDataSource1.SelectCommand = "Select * From [ArticleData] Where article_title LIKE'%" + txtsearch.Text + "%'";
           
        }

        if (ddlSelect.SelectedValue.ToString() == "User")
        {
            //GridView1.Visible = false;
                

            GridView2.Visible = true;
            SqlDataSource2.SelectCommand = "Select * From [Registration] Where first_name LIKE'%" + txtsearch.Text + "%'";

        }

        if (ddlSelect.SelectedValue.ToString() == "Schemes")
        {
            GridView3.Visible = true;
            SqlDataSource3.SelectCommand = "Select * From [GovScemeData] Where schemeName LIKE'%" + txtsearch.Text + "%'";
        }

        if (ddlSelect.SelectedValue.ToString() == "Videos")
        {
            GridView4.Visible = true;
            SqlDataSource4.SelectCommand = "Select * From [VideosData] Where title LIKE'%" + txtsearch.Text + "%'";
        }


        if (ddlSelect.SelectedValue.ToString() == "Crop")
        {
            GridView5.Visible = true;
            SqlDataSource5.SelectCommand = "Select * From [ProductData] Where pname LIKE'%" + txtsearch.Text + "%'";

        }

        if (ddlSelect.SelectedValue.ToString() == "Insurance")
        {
            GridView6.Visible = true;
            SqlDataSource6.SelectCommand = "Select * From [CroplnsuranceData] Where companyName LIKE'%" + txtsearch.Text + "%'";

        }

    }

    
}