using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveApplication
{
    public partial class ApplyLeave : System.Web.UI.Page
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
            string UName = TextBox1.Text.Trim();
            string UEmail = TextBox2.Text.Trim();
            string UReason = TextBox6.Text.Trim();
            DateTime UFrom = DateTime.Parse(TextBox3.Text.Trim());
            DateTime UTo = DateTime.Parse(TextBox4.Text.Trim());

            // Validate date range
            if (UFrom > UTo)
            {
                Response.Write("<script>alert('Invalid date range! The start date cannot be after the end date.');</script>");
                return;
            }

            // Calculate total leave days
            int TotalLeave = (UTo - UFrom).Days + 1; // Include both start and end dates


            string q = $" exec LeaveAopply '{UName}','{UEmail}','{UFrom}','{UTo}','{TotalLeave}','{UReason}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            int row = cmd.ExecuteNonQuery() ;
            if(row > 0)
            {
                Response.Write("<script>alert ('Leave Apply Sucessefully !!!');</script>");
            }
            else
            {
                Response.Write("<script>alert ('Please Try Again !!!');</script>");
            }
        }
    }
}