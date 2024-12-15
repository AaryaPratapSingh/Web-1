using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterviewSchedule
{
    public partial class Apply : System.Web.UI.Page
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
            string UStream = DropDownList1.SelectedValue;
            string UAre = DropDownList2.SelectedValue;
            string UName = TextBox1.Text;
            string UCon = TextBox2.Text;
            string UEmail = TextBox3.Text;
            double UCTC = double.Parse(TextBox4.Text);
            double UECTC = double.Parse(TextBox5.Text);
            string UResume;


            FileUpload1.SaveAs(Server.MapPath("Resume/") + System.IO.Path.GetFileName(FileUpload1.FileName));
            UResume = "Resume/" + System.IO.Path.GetFileName(FileUpload1.FileName);


            string q = $"exec ApplyData '{UStream}','{UAre}','{UName}','{UCon}','{UEmail}','{UCTC}','{UECTC}','{UResume}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
                Response.Write("<Script>alert'Applyed Sucesessfully !!!' window.location,href='BookSlot.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert'Wrong Inputs!!!'</script>");
            }

        }
    }
}