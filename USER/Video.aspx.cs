using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class USER_Video : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String q;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (ddlSelect.SelectedItem.Value.ToString() == "Title")
        {
            q = "Select * From [VideosData] Where title LIKE'%" + txtsearch.Text + "%'";
        }

        SqlDataSource1.SelectCommand = q;
        
    }
}