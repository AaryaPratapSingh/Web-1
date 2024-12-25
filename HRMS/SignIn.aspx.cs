using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRMS
{
    public partial class SignIn : System.Web.UI.Page
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
            string UEmail = TextBox1.Text, UPassword = TextBox2.Text;
            string q = $"exec SignInUsersProc '{UEmail}','{UPassword}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows) // Check if data exists
            {
                rdr.Read(); // Move to the first record
                if (rdr["UEmail"].ToString().Equals(UEmail, StringComparison.OrdinalIgnoreCase) &&
                    rdr["UPassword"].ToString().Equals(UPassword) &&
                    rdr["URole"].ToString().Equals("Admin", StringComparison.OrdinalIgnoreCase))
                {
                    Response.Redirect("Admin.aspx");
                }
                else if (rdr["UEmail"].ToString().Equals(UEmail, StringComparison.OrdinalIgnoreCase) &&
                         rdr["UPassword"].ToString().Equals(UPassword) &&
                         rdr["URole"].ToString().Equals("User", StringComparison.OrdinalIgnoreCase))
                {
                    Response.Redirect("Employee.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid user role!'); window.location='SignIn.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid User Credentials. Please try again.'); window.location='SignIn.aspx';</script>");
            }

            rdr.Close(); // Close the reader
            conn.Close(); // Close the connection
        }
    }
}