using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Support_Hub
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string username = txtUsername.Text;
            string password = txtPassword.Text;
            // Server-side validation
            if (string.IsNullOrEmpty(txtUsername.Text) || string.IsNullOrEmpty(txtPassword.Text))
            {
                Response.Write("<script>alert('Both fields are required.');</script>");
            }
            else if (usermanager.AuthenticateUser(username, password, out int roleId, out int userID))
            {
                string redirectPage = usermanager.RedirectAfterLogin(roleId);
                if (!string.IsNullOrEmpty(redirectPage))
                {
                    Response.Redirect(redirectPage);
                }
                else
                {
                    Response.Write("<script>alert('invalid role.');</script>");
                }
            }
        }
    }
}