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
    public partial class PerformanceForm : System.Web.UI.Page
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
            string Email = TextBox1.Text;
            string Q1 = TextBox2.Text;
            string Q2 = TextBox3.Text;
            string Q3 = TextBox4.Text;
            string Q4 = TextBox5.Text;
            string Q5 = TextBox6.Text;
            string Q6 = TextBox7.Text;
            string Q7 = TextBox8.Text;
            string Q8 = TextBox9.Text;
            string Q9 = TextBox10.Text;
            string Q10 = TextBox11.Text;



            string q = $"exec PerformanceProc '{Email}','{Q1}','{Q2}','{Q3}','{Q4}','{Q5}','{Q6}','{Q7}','{Q8}','{Q9}','{Q10}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Send Successfully!!!'); window.location.href='AskQueries.aspx';</script>");
        }
    }
}