using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.IO;

namespace Web_1
{
    public partial class SendingEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("aaryapratapsingh007@gmail.com");

            string[] recipients = TextBox1.Text.Split(new char[] { ',', ';' }, StringSplitOptions.RemoveEmptyEntries);
            foreach (string recipient in recipients)
            {
                mail.To.Add(recipient.Trim()); // Add each recipient
            }
            mail.Subject = TextBox2.Text;
            mail.Body = TextBox3.Text;

            foreach (var postedFile in FileUpload1.PostedFiles)
            {
                string filePath =Path.Combine(Server.MapPath("~/Attachments"), postedFile.FileName);
                postedFile.SaveAs(filePath);
                mail.Attachments.Add(new Attachment(filePath));
            }

            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new NetworkCredential("aaryapratapsingh007@gmail.com", "uigeukyshvlgedwu");
            smtp.Send(mail);
            Response.Write("<Script>alert('Mail Sent Sucussesfully')</script>");
        }
    }
}