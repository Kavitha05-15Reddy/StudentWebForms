using StudentWebForm.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebForm
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Button(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Register.aspx");
        }

        protected void Login_Button(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Login.aspx");
        }
    }
}