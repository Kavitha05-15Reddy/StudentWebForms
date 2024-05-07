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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=Ramanjaneya\SQLEXPRESS;Initial Catalog=WebForms;Integrated Security=True");
        protected void Registration(object sender, EventArgs e)
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

            SqlCommand cmd = new SqlCommand("Student_Registration_SP", conn);
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
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Registered.');", true);
        }

        protected void Login(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Login.aspx");
        }

        protected void Get(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/StudentDetails.aspx");
        }
    }
}
