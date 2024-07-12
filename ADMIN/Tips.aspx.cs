using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
public partial class ADMIN_Tips : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "insert into TipsData(tips)values(@tips)";

        cmd.Parameters.AddWithValue("@tips", txtTips.Text);
                    
        cmd.Connection = cn;

        int n = cmd.ExecuteNonQuery();

        cn.Close();

        if (n > 0)
        {
            txtTips.Text = "";

            Image1.Visible = true;
            lblmsg.Text = "Tips saved Successfully";
            GridView1.DataBind();

        }

    }
}