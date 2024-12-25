using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRMS
{
    public partial class SendDoc : System.Web.UI.Page
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
            string Email = TextBox1.Text; ;
            string Doc_Type = DropDownList1.SelectedValue;
            string Attachments = "DocFiles/" + Path.GetFileName(FileUpload1.FileName);



            string q = $"exec DocumentsProc '{Email}','{Doc_Type}','{Attachments}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Send Successfully!!!'); window.location.href='SendDoc.aspx';</script>");
        }
    }
}