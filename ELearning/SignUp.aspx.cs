using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELearning
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
            string UName = TextBox1.Text, UEmail = TextBox2.Text, UPassword = TextBox3.Text, URole = "User";

            string query = $"exec FindExistingUser  '{UEmail}'";
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader rdr = cm.ExecuteReader();
            if (rdr.HasRows)
            {
                Response.Write("<script>alert ('User Already Exist!!');</script>");
            }
            else
            {
                string q = $"exec SignUpUsersProc  '{UName}','{UEmail}','{UPassword}','{URole}'";
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