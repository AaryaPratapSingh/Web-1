using System;
using System.Collections.Generic;
<<<<<<< HEAD
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
=======
>>>>>>> fe1f6686128795fba17ee38f061bae25836dc05d
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveApplication
{
    public partial class HRRespons : System.Web.UI.Page
    {
<<<<<<< HEAD
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();
=======
        protected void Page_Load(object sender, EventArgs e)
        {

>>>>>>> fe1f6686128795fba17ee38f061bae25836dc05d
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
<<<<<<< HEAD
            
=======

>>>>>>> fe1f6686128795fba17ee38f061bae25836dc05d
        }
    }
}