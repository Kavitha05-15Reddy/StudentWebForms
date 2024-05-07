using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebForm.Pages
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Get();
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Ramanjaneya\SQLEXPRESS;Initial Catalog=WebForms;Integrated Security=True");
        void Get()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Student_List_SP", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Home(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void Sort(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/SortedDetails.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Get();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int Id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string img = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string gender = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string mobileNo = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string address = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string dateOfJoining = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            DateTime date = DateTime.Parse(dateOfJoining);
            string branch = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;

                
            SqlCommand cmd = new SqlCommand("Student_Update_SP", conn);
            conn.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentID", Id);
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Image", img);
            cmd.Parameters.AddWithValue("@Gender", gender);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@MobileNo", mobileNo);
            cmd.Parameters.AddWithValue("@Address", address);
            cmd.Parameters.AddWithValue("@DateOfJoining", date);
            cmd.Parameters.AddWithValue("@Branch", branch);
            int t = cmd.ExecuteNonQuery();
            conn.Close();
            if (t > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated.');", true);
                GridView1.EditIndex = -1;
                Get();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Get();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            SqlCommand cmd = new SqlCommand("Student_Delete_SP", conn);
            conn.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentID", Id);
            int t = cmd.ExecuteNonQuery();
            conn.Close();
            if (t > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted.');", true);
                GridView1.EditIndex = -1;
                Get();
            }
        }

        //Review
        protected void Dates(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Date_SP", conn);
            conn.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            string date1 = TextBox1.Text;
            string date2 = TextBox2.Text;
            cmd.Parameters.AddWithValue("@DateOfJoining1", date1);
            cmd.Parameters.AddWithValue("@DateOfJoining2", date2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Gender(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Gender_SP", conn);
            conn.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            string name = TextBox3.Text;
            string gender = RadioButtonList1.Text;
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Gender", gender);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}