using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class ADMIN_Addgrains : System.Web.UI.Page
{

    SqlCommand cmd;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        loadgrains();
    }


    //----------------------------------- Load DATA in Grid view---------------------->
    public void loadgrains()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["AR"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "select grains from Grains";

        SqlDataAdapter da = new SqlDataAdapter();
       // cmd.Parameters.AddWithValue("@u", Session["username"].ToString());
        cmd.Connection = con;
        da.SelectCommand = cmd;
        DataTable dt = new DataTable();
        {
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        con.Close();
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["AR"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "insert into Grains (grains) values(@grain)";
        cmd.Parameters.AddWithValue("@grain", txtgrains.Text);
        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {
            lblmsg.Text = "Record inserted Succesfully";
            txtgrains.Text = "";
        }
        else
        {
            lblmsg.Text = "Not inserted";
        
        }
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}