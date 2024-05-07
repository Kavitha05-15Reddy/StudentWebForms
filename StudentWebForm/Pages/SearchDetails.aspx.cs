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
    public partial class SearchDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=Ramanjaneya\SQLEXPRESS;Initial Catalog=WebForms;Integrated Security=True");
        protected void Search(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Gender_SP", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            string Name = TextBox2.Text;
            cmd.Parameters.AddWithValue("@Name", Name);
            conn.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(reader);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                reader.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Searched.');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Record not available please Register.');", true);
                Response.Redirect("Register.aspx");
            }
        }

        protected void Home(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");

        }
    }
}