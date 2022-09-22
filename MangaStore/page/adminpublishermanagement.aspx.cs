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
    public partial class adminpublishermanagement : System.Web.UI.Page
    {
        string scon = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckPublisher())
            {
                ShowPublisher();
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Cannot found Publisher with ID: " + Textbox1.Text.Trim() + "', 'error')", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckPublisher())
            {
                UpdatePublisher();
                GridView1.DataBind();
                ClearForm();
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Cannot found Publisher with ID: " + Textbox1.Text.Trim() + "', 'error')", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckPublisher())
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Publisher already exist', 'error')", true);
            }
            else
            {
                AddPublisher();
                GridView1.DataBind();
                ClearForm();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckPublisher())
            {
                DeletePublisher();
                GridView1.DataBind();
                ClearForm();
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Cannot found Publisher with ID: " + Textbox1.Text.Trim() + "', 'error')", true);
            }
        }

        bool CheckPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Publisher where PublisherID='" + Textbox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
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

        void AddPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Publisher(PublisherID,PublisherName) " +
                    "values(@PublisherID,@PublisherName)", con);
                cmd.Parameters.AddWithValue("@PublisherID", Textbox1.Text.Trim());
                cmd.Parameters.AddWithValue("@PublisherName", Textbox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('SUCCESS', 'Publisher Created', 'success')", true);
                //Response.Redirect("HomePage.aspx");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Something went wrong!', 'error')", true);
            }
        }

        void UpdatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Update Publisher set PublisherName=@PublisherName where PublisherID='" + Textbox1.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@PublisherName", Textbox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('SUCCESS', 'Success Update', 'success')", true);
                //Response.Redirect("HomePage.aspx");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Something went wrong!', 'error')", true);
            }
        }

        void DeletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Delete from Publisher where PublisherID='" + Textbox1.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('SUCCESS', 'Success Delete', 'success')", true);
                //Response.Redirect("HomePage.aspx");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Something went wrong!', 'error')", true);
            }
        }

        void ShowPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Publisher where PublisherID='" + Textbox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Textbox2.Text = dr.GetValue(1).ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Something went wrong!', 'error')", true);
            }
        }
        void ClearForm()
        {
            Textbox1.Text = "";
            Textbox2.Text = "";
        }
    }
}