using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_LabMidTerm_300867201
{
    public partial class ValidationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ToString());
        SqlCommand cmd = new SqlCommand();

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                cmd.Connection = con;
                cmd.CommandType = CommandEventArgs.Empty; 
                cmd.CommandText = "INSERT INTO UserDetails values(@Name,@Email,@Password,@Mobile)";
                cmd.Parameters.AddWithValue("@Name", txtName.Text.ToString());
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.ToString());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.ToString());
                cmd.Parameters.AddWithValue("@Age", txtAge.Text.ToString());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblMsg.Text = "Thank You";
                

            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message.ToString();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}