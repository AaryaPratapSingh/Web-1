using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.xmp.impl;

namespace OfferLetter
{
    public partial class OfferLetterPage : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
                string UserName = TextBox1.Text;
                string UserEmail = TextBox2.Text;
                string UserContact = TextBox3.Text;
                string UserDOJ = TextBox4.Text;
                string UserSalary = TextBox5.Text;

                byte[] pdf = GeneratePdf(UserName, UserEmail, UserContact, UserDOJ, UserSalary);

                string directoryPath = Server.MapPath("~/OfferLetterPDF/");
                if (!Directory.Exists(directoryPath))
                {
                    Directory.CreateDirectory(directoryPath);
                }
                string filePath = Path.Combine(directoryPath, UserName.Replace(" ", "_") + "_OfferLetter.pdf");
                File.WriteAllBytes(filePath, pdf);

                string q = "EXEC OfferLetterProc @UserName, @UserEmail, @UserContact, @UserDOJ, @UserSalary, @Pdf";
                SqlCommand cmd = new SqlCommand(q, conn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@UserEmail", UserEmail);
                cmd.Parameters.AddWithValue("@UserContact", UserContact);
                cmd.Parameters.AddWithValue("@UserDOJ", UserDOJ);
                cmd.Parameters.AddWithValue("@UserSalary", UserSalary);
                cmd.Parameters.AddWithValue("@Pdf", pdf);
                cmd.ExecuteNonQuery();

                SendEmailWithAttachment(UserEmail, pdf);
           

            Response.Write("<script>alert('Offer Letter Sent Successfully!'); window.location.href='OfferLetterPage.aspx';</script>");
            
        }

        private byte[] GeneratePdf(string name, string email, string contact, string doj, string salary)
        {
            using (MemoryStream memoryStream = new MemoryStream())
            {
                Document document = new Document(PageSize.A4);
                PdfWriter.GetInstance(document, memoryStream);
                document.Open();

                // Add content to PDF
                document.Add(new Paragraph("Offer Letter"));
                document.Add(new Paragraph($"Date: {DateTime.Now.ToShortDateString()}"));
                document.Add(new Paragraph($"Dear {name},"));
                document.Add(new Paragraph($"We are pleased to offer you a Software Developer position in our company."));
                document.Add(new Paragraph($"Joining Date: {doj}"));
                document.Add(new Paragraph($"Salary: {salary}"));
                document.Add(new Paragraph($"Contact Number: {contact}"));
                document.Add(new Paragraph($"Email ID: {email}"));
                document.Add(new Paragraph("\nCongratulations and welcome to Masstech!"));

                document.Close();
                return memoryStream.ToArray();
            }
        }

        private void SendEmailWithAttachment(string recipientEmail, byte[] pdfAttachment)
        {
            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("aaryapratapsingh007@gmail.com");
            mailMessage.To.Add(recipientEmail);
            mailMessage.Subject = "Your Offer Letter";
            mailMessage.Body = "Dear Candidate,\n\nPlease find your offer letter attached.\n\nBest regards,\nHR Team";
            mailMessage.IsBodyHtml = false;

            // Attach PDF
            MemoryStream stream = new MemoryStream(pdfAttachment);
            mailMessage.Attachments.Add(new Attachment(stream, "OfferLetter.pdf", "application/pdf"));

            // SMTP Configuration
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587)
            {
                Credentials = new NetworkCredential("aaryapratapsingh007@gmail.com", "edxgplgkcdglwyyu"),
                EnableSsl = true
       

            };


            try
            {
                smtpClient.Send(mailMessage);
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
            finally
            {
                stream.Dispose();
            }
            
        }

    }
}