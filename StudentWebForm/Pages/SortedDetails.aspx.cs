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
    public partial class SortedDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SortedList();
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Ramanjaneya\SQLEXPRESS;Initial Catalog=WebForms;Integrated Security=True");
        void SortedList()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SortedListByName_SP", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Home(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}