﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRMS
{
    public partial class AddEvents : System.Web.UI.Page
    {
            SqlConnection conn;
            protected void Page_Load(object sender, EventArgs e)
            {
                string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                conn = new SqlConnection(cs);
                conn.Open();

                if (!IsPostBack)
                {

                    
                }

            }

           


        }
    }