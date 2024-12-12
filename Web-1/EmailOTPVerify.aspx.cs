using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_1
{
    public partial class OTPVerify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gotp = GenerateOTP();
            string Remail = TextBox1.Text;
            Session["OTP"] = gotp;
            sendOTP(Remail, gotp);
        }
        public string GenerateOTP()
        {
            Random rnd = new Random();
            return rnd.Next(1001,9999).ToString();
        }
        public void sendOTP(string em, string otp)
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("aaryapratapsingh007@gmail.com");
            mail.To.Add(em);
            mail.Subject = "Generate OTP";
            mail.Body = $"Your OTP: {otp}";

            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new NetworkCredential("aaryapratapsingh007@gmail.com", "uigeukyshvlgedwu");
            smtp.Send(mail);
            Response.Write("<Script>alert('Mail Sent Sucussesfully')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string votp = TextBox2.Text;
            if (Session["OTP"].ToString() == votp)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid OTP')</script>");
            }
        }
    }
}