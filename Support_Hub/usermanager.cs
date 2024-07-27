using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Support_Hub
{
    public class usermanager
    {
        public static bool AuthenticateUser(string username, string password, out int roleId, out int userID)
        {
            roleId = 0;
            userID = 0;
            // Get the connection string from the configuration file
            string connectionString = ConfigurationManager.ConnectionStrings["supportHubConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                //check the information from the database
                string query = @"SELECT roleId, userId
                         FROM tblUser
                         WHERE email = @Username
                         AND Password = @password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@password", password);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    roleId = reader.GetInt32(0);
                    userID = reader.GetInt32(1);
                }
                reader.Close();
            }
            return roleId != 0;
        }

        public static string RedirectAfterLogin(int roleId)
        {
            string redirectPage = "";

            switch (roleId)
            {


                case 10003: // Psychologist
                    redirectPage = "~/4PsychologistDash.aspx";
                    break;

                case 10004: // Client
                    redirectPage = "~/2ClientDash.aspx";
                    break;

                default:
                    // Handle invalid role
                    break;
            }

            return redirectPage;
        }
    }
}
