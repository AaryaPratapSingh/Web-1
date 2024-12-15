using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace December_Login_1
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string UserName=TextBox1.Text, UserEmail = TextBox2.Text, UserPass =TextBox3.Text,  urole="User";

            string query = $"exec FindExistingUser '{UserEmail}'";
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader rdr = cm.ExecuteReader();
            if (rdr.HasRows)
            {
                Response.Write("<script>alert ('User Already Exist!!');</script>");
            }
            else
            {
                string q = $"exec Userproc  '{UserName}','{UserEmail}','{UserPass}','{urole}'";
                SqlCommand cmd = new SqlCommand(q, conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('SignUp Sucssefully!!!'); window.location.href='SignIn.aspx';</script>");
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }
    }
}