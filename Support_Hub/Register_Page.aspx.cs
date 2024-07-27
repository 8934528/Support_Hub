using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace Support_Hub
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_Page.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string fname = txtFullName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string password2 = txtConfPassword.Text;
            int cellNum = Convert.ToInt32(txtPhone.Text);
            int roleId = Convert.ToInt32(DropDownList1.SelectedValue); // Get selected user type
            string sex = DropDownList2.SelectedValue;

            // Check if passwords match
            if (txtPassword.Text != txtConfPassword.Text)
            {
                Response.Write("<script>alert('Passwords do not match')</script>");
                return;
            }

            if (DropDownList1.SelectedValue == "10004")
            {
                // Insert data into the database
                string connectionString = ConfigurationManager.ConnectionStrings["supportHubConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    string query = "INSERT INTO tblUser (first_name, Email, Password, Cellphone_number, roleId, Sex) " +
                        "VALUES (@fName,@email, @Password,@Number, @Roles, @sex)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@fName", fname);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.Parameters.AddWithValue("@Number", cellNum);
                    cmd.Parameters.AddWithValue("@Roles", roleId);
                    cmd.Parameters.AddWithValue("@sex", sex);

                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login_Page.aspx");
                }
        }
            else if (DropDownList1.SelectedValue == "10003")
            {
                // Store details in session objects
                Session["UpName"] = fname;
                Session["UpEmail"] = email;
                Session["UpPassword"] = password;
                Session["UpCellNum"] = cellNum;
                Session["UpRoleId"] = roleId;
                Session["UpSex"] = sex;

                // Redirect to Profile page
                Response.Redirect("ConfirmProfile.aspx");
            }
}
    }
}