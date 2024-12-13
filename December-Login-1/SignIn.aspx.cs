﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace December_Login_1
{

    public partial class SignIn : System.Web.UI.Page
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
            string em = TextBox1.Text, pass = TextBox2.Text;
            string q = $"exec signinproc '{em}','{pass}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                while (rdr.Read())
                {
                    if (rdr["UserEmail"].Equals(em) && rdr["UserPass"].Equals(pass) && rdr["Urole"].Equals("Admin"))
                    {
                        Response.Redirect("AdminHome.aspx");
                    }
                    if (rdr["UserEmail"].Equals(em) && rdr["UserPass"].Equals(pass) && rdr["Urole"].Equals("User"))
                    {
                        Response.Redirect("UserHome.aspx");
                    }
                }
            }
        }
    }
}