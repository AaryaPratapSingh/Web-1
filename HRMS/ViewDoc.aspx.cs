using System;
using System.IO;
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
            if (e.CommandName == "View" || e.CommandName == "Download")
            {
                

                    string[] args = e.CommandArgument.ToString().Split(',');
                    ID =(args[0]);
                    string month = args[1];
                    string year = args[2];

                    string fileName = $"PaySlip_{ID}{month}{year}.pdf";
                    string filePath = Server.MapPath($"~/DocFiles/{fileName}");

                    if (File.Exists(filePath))
                    {
                        if (e.CommandName == "View")
                        {

                            Response.ContentType = "application/pdf";
                            Response.AppendHeader("Content-Disposition", $"inline; filename={fileName}");
                            Response.TransmitFile(filePath);
                            Response.End();
                        }

                    }
                    else if (e.CommandName == "Download")
                    {

                        Response.ContentType = "application/pdf";
                        Response.AppendHeader("Content-Disposition", $"attachment; filename={fileName}");
                        Response.TransmitFile(filePath);
                        Response.End();
                    }
                }
              else
                {
                    Response.Write("<script>alert('Payslip file not found.');</script>");
                }
        
            }
        }
    }