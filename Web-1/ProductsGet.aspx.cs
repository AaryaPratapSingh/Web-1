using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_1
{
    public partial class FetchProducts : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                conn = new SqlConnection(cs);
                conn.Open();
                if (!IsPostBack)
                {
                    FetchProd();
                }
            }
            catch (SqlException ex)
            {
                // Handle SQL exceptions
                Response.Write($"<script>alert('Database Error: {ex.Message}')</script>");
            }
            catch (Exception ex)
            {
                // Handle general exceptions
                Response.Write($"<script>alert('Error: {ex.Message}')</script>");
            }
        }
        public void FetchProd()
        {
            try
            {
                string q = "FetchDataaa";
                SqlCommand cmd = new SqlCommand(q, conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Action", "select");

                SqlDataReader rdr = cmd.ExecuteReader();
                DataList1.DataSource = rdr;
                DataList1.DataBind();
            }

            catch (SqlException ex)
            {
                // Handle SQL exceptions
                Response.Write($"<script>alert('Database Error: {ex.Message}')</script>");
            }
            catch (Exception ex)
            {
                // Handle general exceptions
                Response.Write($"<script>alert('Error: {ex.Message}')</script>");
            }
            finally
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
    }
}