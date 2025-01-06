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
    public partial class PerformanceReport : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(cs))
                {
                    try
                    {
                        conn.Open();
                        FetchData(conn);
                    }
                    catch (Exception ex)
                    {
                        Response.Write($"Error: {ex.Message}");
                    }

                }
            }
        }
        public void FetchData(SqlConnection conn)
        {
            string query = "exec FetchPerfromance ";
            using (SqlCommand cmd = new SqlCommand(query, conn))  
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Answer")
            {
                // Retrieve the question
                string question = e.CommandArgument.ToString();

                // Redirect or open a modal for answering the question (optional)
                Response.Redirect($"AnswerQuery.aspx?question={HttpUtility.UrlEncode(question)}");
            }
        }
    }
}