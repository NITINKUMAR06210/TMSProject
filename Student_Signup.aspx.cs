using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace TMS_Project
{
    public partial class Student_Signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["const"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            // Any page load logic goes here
        }

        protected void StudentSignUpBtn_Click(object sender, EventArgs e)
        {
            using(SqlCommand cmd=new SqlCommand("AddStudentData", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@Fname", FatherNameTextBox.Text);
                cmd.Parameters.AddWithValue("@SurName",SurNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Gender",GenderDropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@Age",Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@Country",CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@City",CityTextBox.Text);
                cmd.Parameters.AddWithValue("@Address",AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@Standard", ClassTextBox.Text);
                cmd.Parameters.AddWithValue("@GoingTo", GoingToDropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@Subject", SubjectTextBox.Text);
                cmd.Parameters.AddWithValue("@ContactNo", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@TutionType",TutionTypeDropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@TutionPrefer", TutiorPreferedDropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@Username",UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@Password",PasswordTextBox.Text);

                con.Open();

                int x = cmd.ExecuteNonQuery();

                if (x > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessContact();", true);
                    ResetStudentForm();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrorContact();", true);
                }
            }
        }

        void ResetStudentForm()
        {
            NameTextBox.Text = "";
            FatherNameTextBox.Text = "";
            SurNameTextBox.Text = "";
            GenderDropDownList.SelectedValue = null;
            AgeTextBox.Text = "";
            CountryTextBox.Text = "";
            CityTextBox.Text = "";
            AddressTextBox.Text = "";
            ClassTextBox.Text = "";
            GoingToDropDownList.SelectedValue = null;
            SubjectTextBox.Text = "";
            ContactTextBox.Text = "";
            TutionTypeDropDownList.SelectedValue = null;
            TutiorPreferedDropDownList.SelectedValue = null;
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";
        }
    }
}
