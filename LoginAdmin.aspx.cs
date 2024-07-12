using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
       
        if (txtusername.Text == "admin" && txtpwd.Text == "super")
        {
            Response.Redirect("ADMIN/Home.aspx");
        }
        else
        {
            lblmsg.Text = "Invalid Username and Password !";
        }
    }
}