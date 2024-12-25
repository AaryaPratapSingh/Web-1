using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecBatchASP
{

    public partial class ProductsAdd : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

            var username = Session["Username"]?.ToString();
            Label1.Text = $"Hello {username}";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string PName = TextBox1.Text;
            string PCat = DropDownList1.SelectedValue;
            string PPic;
            double PPrice = double.Parse(TextBox2.Text);

            FileUpload1.SaveAs(Server.MapPath("Images/") + Path.GetFileName(FileUpload1.FileName));
            PPic = "Images/" + Path.GetFileName(FileUpload1.FileName);

            string q = $" exec ProductsAddProc '{PName}','{PCat}','{PPic}','{PPrice}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('product added successfully!!')</Script>");
            //Response.Redirect("Admin.Master.aspx");
        }
    }
}