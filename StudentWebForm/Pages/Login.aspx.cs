using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace StudentWebForm.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=Ramanjaneya\SQLEXPRESS;Initial Catalog=WebForms;Integrated Security=True");
        protected void Login_Button(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Student_Login_SP", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            int Id = int.Parse(TextBox1.Text);
            string Name = TextBox2.Text;
            cmd.Parameters.AddWithValue("@StudentID", Id);
            cmd.Parameters.AddWithValue("@Name", Name);
            conn.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader dataReader = cmd.ExecuteReader();
            while (dataReader.Read())
            {
                Session["Id"] = dataReader["StudentID"];
                Session["Name"] = dataReader["Name"];
            }
            if (Id.Equals(Session["Id"]) && Name.Equals(Session["Name"]))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login sucessfull');", true);
                Response.Redirect("~/Pages/LoginDetails.aspx");

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login failed');", true);
                Response.Redirect("~/Default.aspx");

            }
            conn.Close();
        }

        protected void Registration(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Register.aspx");
        }

        protected void Logout(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}