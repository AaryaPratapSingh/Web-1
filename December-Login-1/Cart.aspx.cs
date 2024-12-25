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
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();
        }
        public void FetchData()
        {

            string q = "exec FetchProducts";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label l1 = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            string pid = l1.Text;
            string q = $"exec deleteProductFromCartById '{pid}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();
            FetchData();
            findTotal();
        }
        public void findTotal()
        {
            string sess = Session["MyUser"].ToString();
            string q1 = $"exec FindUserNameByUser ''{sess}";
            SqlCommand cmd = new SqlCommand(q1, conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            rdr.Read();

            string su = rdr["username"].ToString();
            string q2 = $"exec FindGradTotal '{su}'";
            SqlCommand cmd2 = new SqlCommand(q2, conn);
            SqlDataReader sqlDataReader = cmd2.ExecuteReader();
            sqlDataReader.Read();
            Label8.Text = sqlDataReader["gradTotal"].ToString();
        }

    }
}