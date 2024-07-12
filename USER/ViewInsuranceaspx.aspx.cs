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

public partial class USER_ViewInsuranceaspx : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
         SqlDataSource1.SelectCommand = "select CroplnsuranceData.companyName,CroplnsuranceData.InsuranceName,CroplnsuranceData.description,CroplnsuranceData.website,CroplnsuranceData.photo from CroplnsuranceData where cid= " + Request.QueryString["cid"].ToString();
    
    }
}