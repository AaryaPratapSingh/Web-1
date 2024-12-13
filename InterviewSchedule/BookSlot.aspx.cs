using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterviewSchedule
{
    public partial class BookSlot : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Days = DropDownList1.SelectedValue, Timing = DropDownList2.SelectedValue;

            // Query to check if the slot is already booked
            string checkQuery = $"exec CheckSlots '{Days}', '{Timing}'";
            SqlCommand checkCmd = new SqlCommand(checkQuery, conn);

            try
            {
                // Execute the check query
                object result = checkCmd.ExecuteScalar(); // Assuming CheckSlots returns 1 if booked, 0 if available

                if (result != null && Convert.ToInt32(result) > 0)
                {
                    // Slot is already booked
                    Response.Write("<script>alert('This slot is already booked! Please select another slot.');</script>");
                }
                else
                {
                    string q = $"exec BookSlots'{Days}','{Timing}'";
                    SqlCommand cmd = new SqlCommand(q, conn);
                    cmd.Parameters.AddWithValue("@Sday", Days);
                    cmd.Parameters.AddWithValue("@Stiming", Timing);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Slot Booked Successfully!'); window.location.href='Apply.aspx';</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Slots not Booked!!!');</script>");
            }
        }
    }
}