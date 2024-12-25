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
    public partial class LeaveManagement : System.Web.UI.Page
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
            string UEmail = TextBox4.Text; ;
            string Leave_Type = DropDownList1.SelectedValue;
            string From_Date = TextBox1.Text;
            string To_Date = TextBox2.Text;
            string Reason = TextBox3.Text;



            string q = $"exec LeaveApplicationProc '{UEmail}','{Leave_Type}','{From_Date}','{To_Date}','{Reason}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Leave Applied Successfully!!!'); window.location.href='LeaveApplication.aspx';</script>");
    
        }
    }
}