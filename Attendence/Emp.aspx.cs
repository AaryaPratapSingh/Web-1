using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace MasterProject
{
    public partial class FetchProducts : Page
    {
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
            string query = "exec FetchAttendence";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
            }
        }
    }
}
