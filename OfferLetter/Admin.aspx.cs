using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfferLetter
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

            GetData();
        }
        public void GetData()
        {
            try
            {
                // Get the connection string from Web.config
                string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(cs))
                {
                    conn.Open();

                    // Use the stored procedure
                    string q = "FetchOfferLetterProc";
                    using (SqlCommand cmd = new SqlCommand(q, conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        // Execute and bind the data to the GridView
                        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            adapter.Fill(dt);

                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

    }

}