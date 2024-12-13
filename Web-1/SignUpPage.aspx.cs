using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CName = TextBox5.Text; ;
            double CAge = double.Parse(TextBox6.Text);
            string CEmail = TextBox7.Text, CPass = TextBox8.Text, CPassCon = TextBox9.Text;

            string q = $"exec signup '{CName}','{CAge}','{CEmail}','{CPass}','{CPassCon}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
                Response.Write("<script>alert('SignUp SuccsessFully!!!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Not SignUp!!!')</script>");
            }

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string s = TextBox8.Text;
            char ch = s[1];
            if(ch > 'A' && ch < 'Z')
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        
    }
}