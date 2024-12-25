using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_1
{
    public partial class MultiViewControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;

            Label1.Text= $"Name Is {TextBox1.Text}";
            Label2.Text = $"Email Is {TextBox2.Text}";
            Label3.Text = $"SSC% Is {TextBox3.Text}";
            Label4.Text = $"HSC% Is {TextBox4.Text}";
            Label5.Text = $"City Is {DropDownList1.SelectedValue}";
            Label6.Text = $"PinCode Is {TextBox5.Text}";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            Response.Write("<script>alert('Data Submit Succssefully'); </script>");
        }
         
    }
}