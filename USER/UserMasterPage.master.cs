using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class USER_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
            //lblmsg.Text = Session["username"].ToString();
            //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            //con.Open();
            //SqlCommand cmd = new SqlCommand();

            //cmd.CommandText = "Select photo from Registration where username=@u";
            //cmd.Parameters.AddWithValue("@u", Session["username"].ToString());
            //cmd.Connection = con;
            //object obj = cmd.ExecuteScalar();
            //con.Close();
            //String fname = obj.ToString();
            //Image1.ImageUrl = "photo\\" + fname;
        
    }
}
