using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MangaStore.page
{
    public partial class adminlogin : System.Web.UI.Page
    {
        string scon = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AdminLogin();
        }

        void AdminLogin()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Admin where AdminID='" + Textbox1.Text.Trim() + "' and password='" + Textbox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["username"] = dr.GetValue(1).ToString();
                        Session["role"] = "admin";
                    }
                    Response.Redirect("HomePage.aspx");
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Something went wrong!', 'error')", true);
            }
        }
    }
}