using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Windows.Documents;
using System.Configuration;
using MangaStore.Model;
using System.Data.SqlClient;
using System.Data;

namespace MangaStore.page
{
    public partial class usersignup : System.Web.UI.Page
    {
        string scon = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckMemberExist())
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('ERROR', 'This ID already exist!', 'error')", true);
            }
            else
            {
                SignUpUser();
            }
        }

        bool CheckMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Member where MemberID='" + Textbox5.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Something went wrong!!!', 'error')", true);
                return false;
            }           
        }

        void SignUpUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Member(MemberID,FullName,DoB,Contact,Email,Country,Password,AccountStatus) " +
                    "values(@MemberID,@FullName,@DoB,@Contact,@Email,@Country,@Password,@AccountStatus)", con);
                cmd.Parameters.AddWithValue("@MemberID", Textbox5.Text.Trim());
                cmd.Parameters.AddWithValue("@FullName", Textbox1.Text.Trim());
                cmd.Parameters.AddWithValue("@DoB", Textbox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact", Textbox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", Textbox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Country", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Password", Textbox6.Text.Trim());
                cmd.Parameters.AddWithValue("@AccountStatus", "Pending");

                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('SUCCESS', 'Account Created', 'success')", true);
                Response.Redirect("HomePage.aspx");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Something went wrong!', 'error')", true);
            }
        }
    }
}
