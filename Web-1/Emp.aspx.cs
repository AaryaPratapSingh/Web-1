using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_1
{
    public partial class Emp : System.Web.UI.Page
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
            string name =TextBox1.Text;
            string em =TextBox2.Text;
            double sal = double.Parse(TextBox3.Text);

            string q = $"exec ADDPPP '{name}','{em}','{sal}'";
            SqlCommand cmd = new SqlCommand(q,conn);
            int row =cmd.ExecuteNonQuery();
            if (row > 0)
            {
                Response.Write("<script>alert('emp added sucsessfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('emp not added')</script>");
            }
        }
    }
}