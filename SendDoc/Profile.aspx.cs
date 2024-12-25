using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

namespace SendDoc
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                conn = new SqlConnection(cs);
                conn.Open();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Database connection failed: " + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    string docName = DropDownList1.SelectedValue;
                    string docPath = "Uploads/" + Path.GetFileName(FileUpload1.FileName);

                    // Save the file to the server
                    FileUpload1.SaveAs(Server.MapPath(docPath));

                    // Call stored procedure
                    string query = "exec SendDocProc @DocName, @DocPath";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@DocName", docName);
                        cmd.Parameters.AddWithValue("@DocPath", docPath);

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            Response.Write("<script>alert('Doc uploaded successfully!');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Failed to upload document.');</script>");
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please select a file to upload.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}
