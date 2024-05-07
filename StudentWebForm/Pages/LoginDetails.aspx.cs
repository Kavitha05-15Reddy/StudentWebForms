using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace StudentWebForm.Pages
{
    public partial class LoginDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] != null && Session["Name"] != null)
            {
                int studentId = (int)Session["Id"];
                string name = (string)Session["Name"];

                Get(studentId, name);
            }
            else
            {
                Response.Redirect("~/Pages/Login.aspx");
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Ramanjaneya\SQLEXPRESS;Initial Catalog=WebForms;Integrated Security=True");
        public void Get(int studentId, string name)
        {
            conn.Open();
            SqlCommand co = new SqlCommand("Student_Login_SP'" + studentId + "' , '" + name + "' ", conn);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Update(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/UpdateDetails.aspx");
        }

        protected void Delete(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/DeleteDetails.aspx");
        }

        protected void Logout(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

    }
}