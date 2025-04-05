using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project
{
	public partial class Contact2 : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["const"].ConnectionString);

		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
			using(SqlCommand cmd=new SqlCommand("spContact_Insert", con))
			{
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
				cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
				cmd.Parameters.AddWithValue("@subject", SubjectDropDownList.SelectedValue);
				cmd.Parameters.AddWithValue("@message", MsgTextBox.Text);

                con.Open();

                int x = cmd.ExecuteNonQuery();

				if(x>0)
				{
					//Response.Write("<script>SuccessContact();</script>");
					ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessContact();", true);
                    ResetContact();
                }
				else
				{
					//Response.Write("<script>alert('error!');</script>");
					ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrorContact();", true);
				}
				

            }
        }

		private void ResetContact()
		{
			NameTextBox.Text = "";
			EmailTextBox.Text = "";
			SubjectDropDownList.ClearSelection();
			MsgTextBox.Text = "";
		}
    }
}