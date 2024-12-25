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
    public partial class ManageUser : System.Web.UI.Page
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
            string query = "exec FetchSignUpUsersProc";
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
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[rowIndex];

            if (e.CommandName == "Update")
            {
                // Handle update logic here
            }
            else if (e.CommandName == "Block")
            {
                // Handle block logic here
            }
            else if (e.CommandName == "Delete")
            {
                // Handle delete logic here
            }
        }

    }
}