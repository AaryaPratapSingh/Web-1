using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace December_Login_1
{
    public partial class ProductsAdd : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

            if (Session["Username"] != null)
            {
                Label1.Text = $"Hello {Session["Username"]}";
            }
            else
            {
                Response.Write("<script>alert('Need to login'); window.location.href='login.aspx';</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string PName = TextBox1.Text, PCat = DropDownList1.SelectedValue;
            double PPrice = double.Parse(TextBox2.Text);
            string PPic;

            FileUpload1.SaveAs(Server.MapPath("Images/") + System.IO.Path.GetFileName(FileUpload1.FileName));
            PPic = "Images/" + System.IO.Path.GetFileName(FileUpload1.FileName);

            string q = $"exec Productt '{PName}','{PCat}','{PPrice}','{PPic}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            int row = cmd.ExecuteNonQuery();
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