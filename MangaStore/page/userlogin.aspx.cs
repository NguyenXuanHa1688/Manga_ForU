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
    public partial class userlogin : System.Web.UI.Page
    {
        string scon = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            loginMember();
        }

        void loginMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Member where MemberID='"+ Textbox5.Text.Trim() +"' and password='"+ Textbox6.Text.Trim() +"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["username"] = dr.GetValue(1).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(7).ToString();
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

        void checkAccount()
        {

        }
    }
}