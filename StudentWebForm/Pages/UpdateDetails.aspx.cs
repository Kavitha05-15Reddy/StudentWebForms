using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebForm.Pages
{
    public partial class UpdateDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Id"] != null)
                {
                    Get();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        void Get()
        {
            SqlCommand cmd = new SqlCommand("GetById_SP", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            int Id = (int)Session["Id"];
            cmd.Parameters.AddWithValue("@StudentID", Id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr["StudentID"].ToString();
                TextBox2.Text = (string)dr["Name"];
                RadioButtonList1.Text = (string)dr["Gender"];
                TextBox3.Text = (string)dr["Email"];
                TextBox4.Text = (string)dr["MobileNo"];
                TextBox5.Text = (string)dr["Address"];
                TextBox6.Text = ((DateTime)dr["DateOfJoining"]).ToString("yyyy-MM-dd");
                DropDownList1.Text = (string)dr["Branch"];
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Ramanjaneya\SQLEXPRESS;Initial Catalog=WebForms;Integrated Security=True");
        protected void Update(object sender, EventArgs e)
        {
            conn.Open();
            string image = "";
            if (I1.Checked)
            {
                image = Image1.ImageUrl;
            }
            else if (I2.Checked)
            {
                image = Image2.ImageUrl;
            }
            else if (I3.Checked)
            {
                image = Image3.ImageUrl;
            }
            else
            {
                image = Image4.ImageUrl;
            }

            SqlCommand cmd = new SqlCommand("Student_Update_SP", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentId", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Image", image);
            cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@MobileNo", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
            cmd.Parameters.AddWithValue("@DateOfJoining", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Branch", DropDownList1.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/Pages/StudentDetails.aspx");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated.');", true);
        }
    }
}