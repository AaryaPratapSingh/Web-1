using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveApplication
{
    public partial class Login : System.Web.UI.Page
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
            string UserName = TextBox1.Text;
            string UserPassword = TextBox2.Text;

            string q = $"exec LeaveUsers '{UserName}','{UserPassword}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
                Response.Write("<Script>alert'Login Sucesessfully !!!'</script>");
                Response.Redirect("ApplyLeave.aspx");
            }
            else
            {
                Response.Write("<script>alert'Wrong Inputs!!!'</script>");
            }
        }
    }
}