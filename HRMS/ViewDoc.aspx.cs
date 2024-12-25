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
    public partial class ViewDoc : System.Web.UI.Page
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
            string query = "exec FetchDocumentsProc";
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
            if (e.CommandName == "View")
            {
                string filePath = e.CommandArgument.ToString();
                string absolutePath = ResolveUrl("~/" + filePath);

                // Logic to display the file, e.g., open in a new tab
                Response.Redirect(absolutePath);
            }
            else if (e.CommandName == "Download")
            {
                string filePath = e.CommandArgument.ToString();
                string absolutePath = Server.MapPath("~/" + filePath);

                if (System.IO.File.Exists(absolutePath))
                {
                    Response.ContentType = "application/octet-stream";
                    Response.AppendHeader("Content-Disposition", $"attachment; filename={System.IO.Path.GetFileName(absolutePath)}");
                    Response.TransmitFile(absolutePath);
                    Response.End();
                }
                else
                {
                    Response.Write("<script>alert('File not found.');</script>");
                }
            }
        }
    }
}