using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRMS
{
    public partial class Queries : System.Web.UI.Page
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
                        //SendPaySlipEmail();
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
            string query = "exec FetchQuestionsProc";
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
        public void SendPaySlipEmail(string Email )
        {
            try
            {
                string subject = "Your Pay Slip";
                string body = "Dear Employee,\n\nPlease find your pay slip attached.\n\nBest Regards,\nPayroll Team";

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("chavanvinayak292@gmail.com");
                mail.To.Add(Email);
                mail.Subject = subject;
                mail.Body = body;
                

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.Credentials = new NetworkCredential("chavanvinayak292@gmail.com", "shhgnreeqzfbkray");
                smtpClient.EnableSsl = true;

                smtpClient.Send(mail);
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error sending email: {ex.Message}');</script>");
            }
        }

    }
}