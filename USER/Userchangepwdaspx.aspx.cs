using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class USER_Userchangepwdaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void BtnCancle_Click(object sender, EventArgs e)
    {
        TxtboxOldPassword.Text = "";
        TxtBoxNewPassword.Text="";
        TxtBoxConfirmPassword.Text="";
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {

        if (TxtboxOldPassword.Text == Session["password"].ToString())
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["AR"]);
            con.Open();

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "Update Registration set password=@p where username=@u";

            cmd.Parameters.AddWithValue("@p", TxtBoxNewPassword.Text);
            cmd.Parameters.AddWithValue("@u", Session["username"].ToString());

            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            TxtboxOldPassword.Text = "";
            TxtBoxNewPassword.Text = "";
            TxtBoxConfirmPassword.Text = "";
            con.Close();
            lblmsg.Text = "Password Changed Successfully";

        }
        else
        {
            lblmsg.Text = "Enter Valid Old Password !";
        }
    }
}