<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project.Student_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
     function SuccessContact() {
         Swal.fire({
             title: "Success",
             text: "Form has been Submitted Sucessfully!",
             icon: "success"
         });
     }
     function ErrorContact() {
         Swal.fire({
             title: "Failure",
             text: "Form insertion Failed!",
             icon: "error"
         });
     }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br />
    <div class="container" id="signup"> 
        <div class="row">
            <div class="col-md-12">
                <h1 class="bg-primary text-white text-center py-5 mb-4">Student SignUp</h1>
            </div>
        </div>



        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="EnterFather Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Father Name is required" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="FatherNameTextBox"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SurNameTextBox" CssClass="form-control" placeholder="Enter Sur Name" runat="server"></asp:TextBox>
                <br />
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                
                <br />
                 <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Age is required" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="AgeTextBox"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be Within 5 to 60" Display="Dynamic" ForeColor="Red" ControlToValidate="AgeTextBox" MaximumValue="60" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>


                <br />
                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Country name is required" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="CountryTextBox"></asp:RequiredFieldValidator>


                <br />
               

            </div>
            <br />
            <div class="col-md-4">

                                <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City Name" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="City name is required" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="CityTextBox"></asp:RequiredFieldValidator>
               <br />
                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Columns="20" Rows="4" placeholder="Enter Address" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address required" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="AddressTextBox"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="ClassTextBox" placeholder="Enter Class" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Class required" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="ClassTextBox"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select  GoingTo</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>University</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Select GoingTo" ControlToValidate="GoingToDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" InitialValue="Select  GoingTo"></asp:RequiredFieldValidator>
                
                <br />
                <asp:TextBox ID="SubjectTextBox" placeholder="Enter Subjects" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Subject  required" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="SubjectTextBox"></asp:RequiredFieldValidator>


                <br />

               
                <br />
            </div>
            <br />
            <br />
            <div class="col-md-4">

                 <asp:TextBox ID="ContactTextBox" placeholder="Enter Contact Number" CssClass="form-control" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Contact number is  required" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="ContactTextBox"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="TutionTypeDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select TutionType</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Offline</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Select Tution type" ControlToValidate="TutionTypeDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" InitialValue="Select TutionType"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="TutiorPreferedDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select TutorPrefered</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Select Tutior Prefered" ControlToValidate="TutiorPreferedDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" InitialValue="Select TutorPrefered"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="UsernameTextBox" placeholder="Enter UserName" CssClass="form-control" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Username  is required" ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="PasswordTextBox" placeholder="Enter Password" CssClass="form-control" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredfieldValidatiorPswd" runat="server" ErrorMessage="Password is Required" ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regularpswd" runat="server" ForeColor="Red" SetFocusOnError="true" ControlToValidate="PasswordTextBox" Display="Dynamic" ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" ErrorMessage="Password must be at least 8 characters long, contain at least one uppercase letter, one lowercase letter, one number, and one special character."></asp:RegularExpressionValidator>

                <br />
                <asp:TextBox ID="ConfirmPasswordTextBox" placeholder="Re-EnterPassword" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Confirm Password is Required" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="ConfirmPasswordTextBox"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Both Password must be Identicial"></asp:CompareValidator>
 
                <br />
 
            </div>
        </div>
        <br />
        <div class="row">
        <div class="col-12 d-flex justify-content-center">
            <div class="col-md-5 col-12">
                <br />
                <asp:Button ID="StudentSignUpBtn" runat="server" OnClick="StudentSignUpBtn_Click" CssClass="btn btn-primary btn-lg w-100" Text="SignUp" />
                <br />
                <br />
            </div>
        </div>
    </div>
      <br />
    </div>
    <br />
    
</asp:Content>
