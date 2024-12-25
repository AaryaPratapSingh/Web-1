using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SendDoc
{
    public partial class ProfileFetch : System.Web.UI.Page
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
                string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(cs))
                {
                    conn.Open();

                    string q = "FetchSendDoc";
                    using (SqlCommand cmd = new SqlCommand(q, conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

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

        
        protected void btnView_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string docImage = btn.CommandArgument.ToString();

            
            Response.Redirect("Uploads/" + docImage);
        }

       
        protected void btnDownload_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string docImage = btn.CommandArgument.ToString();

            
            string filePath = Server.MapPath("~/Uploads/" + docImage);
            if (System.IO.File.Exists(filePath))
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + docImage);
                Response.TransmitFile(filePath);
                Response.End();
            }
            else
            {
                Response.Write("<script>alert('File not found!');</script>");
            }
        }
    }
}
