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

public partial class ADMIN_User : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int id = 1;


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void Status(int id)
    {
        //con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        //cmd = new SqlCommand();
        //con.Open();
        //SqlDataSource1.SelectCommand = " Update Registration set veriefied=@verify where id=@id ";
        //cmd.Parameters.AddWithValue("@verify", 1);
        //cmd.Parameters.AddWithValue("@id", id);
        //cmd.ExecuteNonQuery();
        //con.Close();
    }
   

    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
    //    cmd = new SqlCommand();
    //    con.Open();
    //    SqlDataSource1.SelectCommand = " Update Registration set veriefied=@verify where id=@id ";
    //    cmd.Parameters.AddWithValue("@verify", 1);
    //    cmd.Parameters.AddWithValue("@id", id);
    //    cmd.ExecuteNonQuery();
    //    con.Close();

    //    Response.Redirect("ShowUser.aspx");
    //}
}




























//    protected void btnshow_Click1(object sender, EventArgs e)
//    {
//        try  
//        {
//            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
//            cmd = new SqlCommand(;)
//            string filename = Path.GetFileName(fileupload1.PostedFile.FileName);
//            fileupload1.SaveAs(Server.MapPath("~/Images/" + filename));
//            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ImageSql"].ConnectionString);  
//            con.Open();
//            cmd = new SqlCommand("insert into Image_Details (ImageName,Image) values(@ImageName,@Image)", con);
//            cmd.Parameters.AddWithValue("@ImageName", filename);
//            cmd.Parameters.AddWithValue("@Image", "Images/" + filename);  
//            cmd.ExecuteNonQuery();  
//            da = new SqlDataAdapter("select * from Image_Details",con);  
//            ds = new DataSet();  
//            da.Fill(ds);
//            GridView1.DataSource = ds;
//            GridView1.DataBind();
//            con.Close();
//        }  
//        catch (Exception ex)  
//        {
//            Label1.Text = ex.Message;  
//        }  
      
//        ShowData();
//    }
//}





