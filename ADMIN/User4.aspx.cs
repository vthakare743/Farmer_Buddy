using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

public partial class ADMIN_User4 : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    int id;


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = " Update Registration set veriefied=@verify Where id=@id ";
        cmd.Parameters.AddWithValue("@verify", 1);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();

        Label1.Text = " Your Status has been updated!";

    }
}