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
    public partial class DeleteDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] != null)
            {
                delete();
                Response.Redirect("~/Pages/StudentDetails.aspx");
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Ramanjaneya\SQLEXPRESS;Initial Catalog=WebForms;Integrated Security=True");
        void delete()
        {
            SqlCommand cmd = new SqlCommand("Student_Delete_SP", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            int Id = (int)Session["Id"];
            cmd.Parameters.AddWithValue("@StudentID", Id);
            conn.Open();
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted.');", true);
        }
    }
}