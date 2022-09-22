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
    public partial class adminauthormanagement : System.Web.UI.Page
    {
        string scon = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckAuthorData())
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Author already exist', 'error')", true);
            }
            else
            {
                AddNewAuthor();
                GridView1.DataBind();
                ClearForm();
            }
        }

        void AddNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Author(AuthorID,AuthorName) " +
                    "values(@AuthorID,@AuthorName)", con);
                cmd.Parameters.AddWithValue("@AuthorID", Textbox1.Text.Trim());
                cmd.Parameters.AddWithValue("@AuthorName", Textbox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('SUCCESS', 'Author Created', 'success')", true);
                //Response.Redirect("HomePage.aspx");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Something went wrong!', 'error')", true);
            }
        }

        bool CheckAuthorData()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Author where AuthorID='" + Textbox1.Text.Trim() + "';", con);
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

        void UpdateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Update Author set AuthorName=@AuthorName where AuthorID='" + Textbox1.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@AuthorName", Textbox2.Text.Trim());
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

        void DeleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Delete from Author where AuthorID='" + Textbox1.Text.Trim() + "'", con);
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckAuthorData())
            {
                UpdateAuthor();
                GridView1.DataBind();
                ClearForm();
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Cannot found Author with ID: "+ Textbox1.Text.Trim() +"', 'error')", true);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckAuthorData())
            {
                DeleteAuthor();
                GridView1.DataBind();
                ClearForm();
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Cannot found Author with ID: " + Textbox1.Text.Trim() + "', 'error')", true);
            }
        }

        void ShowAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(scon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Author where AuthorID='" + Textbox1.Text.Trim() + "'", con);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckAuthorData())
            {
                ShowAuthor();
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'Cannot found Author with ID: " + Textbox1.Text.Trim() + "', 'error')", true);
            }
        }

        void ClearForm()
        {
            Textbox1.Text = "";
            Textbox2.Text = "";
        }
    }
}