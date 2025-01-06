using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterviewSchedule
{
    public partial class Apply : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

        }
        protected void HandleStreamChange(object sender, EventArgs e)
        {
            string selectedStream = DropDownList1.SelectedValue;

            bool isEnabled = selectedStream != "Others";
            TextBox1.Enabled = isEnabled;
            TextBox2.Enabled = isEnabled;
            TextBox3.Enabled = isEnabled;
            TextBox4.Enabled = isEnabled;
            TextBox5.Enabled = isEnabled;
            DropDownList3.Enabled = isEnabled;
            FileUpload1.Enabled = isEnabled;
        }

        protected void HandleAreYouChange(object sender, EventArgs e)
        {
            string selectedOption = DropDownList2.SelectedValue;

            bool isEnabled = selectedOption == "Experience";
            TextBox4.Enabled = isEnabled;
            TextBox5.Enabled = isEnabled;
            DropDownList3.Enabled = isEnabled;

            if (!isEnabled)
            {
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                DropDownList3.SelectedIndex = 0;
            }
        }


        protected void HandleAreYouChange()
        {
            DropDownList areYouDropdown = (DropDownList)FindControl("<%= DropDownList2.ClientID %>");
            TextBox ctcInput = (TextBox)FindControl("<%= TextBox4.ClientID %>");
            TextBox ectcInput = (TextBox)FindControl("<%= TextBox5.ClientID %>");
            DropDownList noticePeriodDropdown = (DropDownList)FindControl("<%= DropDownList3.ClientID %>");
            string selectedOption = areYouDropdown.SelectedValue;

            if (selectedOption == "Fresher")
            {
                ctcInput.Enabled = false;
                ectcInput.Enabled = false;
                noticePeriodDropdown.Enabled = false;
                ctcInput.Text = "";
                ectcInput.Text = "";
                noticePeriodDropdown.SelectedIndex = 0;
            }
            else
            {
                ctcInput.Enabled = true;
                ectcInput.Enabled = true;
                noticePeriodDropdown.Enabled = true;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string UStream = DropDownList1.SelectedValue;
            string UAre = DropDownList2.SelectedValue;
            string UName = TextBox1.Text;
            string UCon = TextBox2.Text;
            string UEmail = TextBox3.Text;
            double UCTC = double.Parse(TextBox4.Text);
            double UECTC = double.Parse(TextBox5.Text);
<<<<<<< HEAD
            string UNotice = DropDownList3.SelectedValue;
=======
>>>>>>> fe1f6686128795fba17ee38f061bae25836dc05d
            string UResume;


            FileUpload1.SaveAs(Server.MapPath("Resume/") + System.IO.Path.GetFileName(FileUpload1.FileName));
            UResume = "Resume/" + System.IO.Path.GetFileName(FileUpload1.FileName);


<<<<<<< HEAD
            string q = $"exec ApplyData '{UStream}','{UAre}','{UName}','{UCon}','{UEmail}','{UCTC}','{UECTC}','{UNotice}','{UResume}'";
=======
            string q = $"exec ApplyData '{UStream}','{UAre}','{UName}','{UCon}','{UEmail}','{UCTC}','{UECTC}','{UResume}'";
>>>>>>> fe1f6686128795fba17ee38f061bae25836dc05d
            SqlCommand cmd = new SqlCommand(q, conn);
            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
<<<<<<< HEAD
                Response.Write("<Script>alert('Applyed Sucesessfully !!!'); window.location.href='BookSlot.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Wrong Inputs!!!');</script>");
=======
                Response.Write("<Script>alert'Applyed Sucesessfully !!!' window.location,href='BookSlot.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert'Wrong Inputs!!!'</script>");
>>>>>>> fe1f6686128795fba17ee38f061bae25836dc05d
            }

        }
    }
}