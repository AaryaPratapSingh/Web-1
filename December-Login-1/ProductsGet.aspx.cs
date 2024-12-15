using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace December_Login_1
{
    public partial class ProductsGet : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (e.CommandName == "AddToCart")
            //{
            //    string q = $"exec FindProductById '{e.CommandArgument.ToString()}'";
            //    SqlCommand cm = new SqlCommand(q, conn);
            //    SqlDataReader dr = cm.ExecuteReader();
            //    dr.Read();
            //    string prod_name = dr["pname"].ToString();
            //    string prod_cat = dr["pcat"].ToString();
            //    string prod_pic = dr["pic"].ToString();
            //    string prod_price = double.Parse(dr["price"].ToString());

            //    string pdate = DateTime.Now.ToString("dd/mm/yyyy");
            //    DropDownList dropdownn = e.Item.FindControl("DropDownList") as DropDownList;
            //    int quantity = int.Parse(dropdownn.SelectedValue.ToString());

            //    double total = prod_price * quantity;
            //    string suser = Session["MyUser"].ToString();

            //    string q2 = $"exec AddToCart '{prod_name}','{prod_cat}','{prod_pic}','{prod_price}','{quantity}','{total}','{pdate}','{suser}'";
            //    SqlCommand cmd = new SqlCommand(q2, conn);
            //    cmd.ExecuteNonQuery();
            //    Response.Redirect("Cart.aspx");
            }
        }
    }