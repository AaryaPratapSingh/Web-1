﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text, pass = TextBox2.Text;
            if(username.Equals(pass))
            {
                Session["Username"] = User;
                Response.Redirect("ProductsAdd.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or password')</script>");
            }
        }

  
    }
}