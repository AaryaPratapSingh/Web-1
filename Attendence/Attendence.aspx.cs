﻿using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Attendance
{
    public partial class Attendance : Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"]?.ConnectionString;
            if (string.IsNullOrEmpty(cs))
            {
                throw new ConfigurationErrorsException("Connection string 'dbconn' is missing in web.config.");
            }

            conn = new SqlConnection(cs);
            conn.Open();

            if (!IsPostBack)
            {
                CheckLastCheckIn();

            }
        }

        private void CheckLastCheckIn()
        {
            using (SqlCommand cmd = new SqlCommand("GetLastCheckIn", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserId", "user123");

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    // Retrieve CheckInDate and CheckInTime from database
                    string checkInDate = reader["CheckInDate"].ToString();
                    string checkInTime = reader["CheckInTime"].ToString();

                    DateTime lastCheckIn;

                    // Try to parse the date and time
                    if (DateTime.TryParse(checkInDate + " " + checkInTime, out lastCheckIn))
                    {
                        if ((DateTime.Now - lastCheckIn).TotalHours < 24)
                        {
                            Button1.Enabled = false;
                            StatusLabel.Text = "You have already checked in. Check-in will be enabled after 24 hours.";
                        }
                    }
                    else
                    {
                        StatusLabel.Text = "Invalid Check-in data.";
                    }
                }
                reader.Close();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlCommand cmd = new SqlCommand("CheckIn", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserId", "user123");
                cmd.Parameters.AddWithValue("@Name", "John Doe");
                cmd.Parameters.AddWithValue("@CheckInDate", DateTime.Now.Date);
                cmd.Parameters.AddWithValue("@CheckInTime", DateTime.Now.TimeOfDay);

                cmd.ExecuteNonQuery();
                Button1.Enabled = false;
                StatusLabel.Text = "Check-in successful!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlCommand cmd = new SqlCommand("CheckOut", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserId", "user123");
                cmd.Parameters.AddWithValue("@CheckOutDate", DateTime.Now.Date);
                cmd.Parameters.AddWithValue("@CheckOutTime", DateTime.Now.TimeOfDay);

                try
                {
                    cmd.ExecuteNonQuery();
                    StatusLabel.Text = "Check-out successful!";
                }
                catch (SqlException ex)
                {
                    StatusLabel.Text = ex.Message;
                }
            }
            Response.Redirect("Emp.aspx");
        }
        

    }
}
