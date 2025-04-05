<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TMS_Project.Contact2" %>
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
    <!-- Page Title -->
    <div class="page-title" data-aos="fade">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1>Contact</h1>
              <p class="mb-0">Odio et unde deleniti. Deserunt numquam exercitationem. Officiis quo odio sint voluptas consequatur ut a odio voluptatem. Sit dolorum debitis veritatis natus dolores. Quasi ratione sint. Sit quaerat ipsum dolorem.</p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
            <li><a href="index.html">Home</a></li>
            <li class="current">Contact</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->
     <!-- Contact Section -->
    <section id="contact" class="contact section">

      <div class="mb-5" data-aos="fade-up" data-aos-delay="200">
        <iframe style="border:0; width: 100%; height: 300px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d48389.78314118045!2d-74.006138!3d40.710059!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a22a3bda30d%3A0xb89d1fe6bc499443!2sDowntown%20Conference%20Center!5e0!3m2!1sen!2sus!4v1676961268712!5m2!1sen!2sus" frameborder="0" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div><!-- End Google Maps -->

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row gy-4">

          <div class="col-lg-4">
            <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="300">
              <i class="bi bi-geo-alt flex-shrink-0"></i>
              <div>
                <h3>Address</h3>
                <p>A108 Adam Street, New York, NY 535022</p>
              </div>
            </div><!-- End Info Item -->

            <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="400">
              <i class="bi bi-telephone flex-shrink-0"></i>
              <div>
                <h3>Call Us</h3>
                <p>+1 5589 55488 55</p>
              </div>
            </div><!-- End Info Item -->

            <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="500">
              <i class="bi bi-envelope flex-shrink-0"></i>
              <div>
                <h3>Email Us</h3>
                <p>info@example.com</p>
              </div>
            </div><!-- End Info Item -->

          </div>

          <div class="col-lg-8">
            <form action="forms/contact.php" method="post" class="php-email-form" data-aos="fade-up" data-aos-delay="200">
              <div class="row gy-4">

                <div class="col-md-6">
                  <%--<input type="text" name="name" class="form-control" placeholder="Your Name" required="">--%>
                  <asp:TextBox ID="NameTextBox" class="form-control" placeholder="Your Name"  runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator> 
                </div>

                <div class="col-md-6 ">
                  <%--<input type="email" class="form-control" name="email" placeholder="Your Email" required="">--%>
                  <asp:TextBox ID="EmailTextBox" class="form-control" placeholder="Your Email"  runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>

                <div class="col-md-12">
                  <%--<input type="text" class="form-control" name="subject" placeholder="Subject" required="">--%>
                  <%--<asp:TextBox ID="SubjectTextBox" class="form-control" placeholder="Subject"  runat="server"></asp:TextBox>--%>
                  <asp:DropDownList ID="SubjectDropDownList" class="form-control" runat="server">
                      <asp:ListItem>Select</asp:ListItem>
                      <asp:ListItem>Suggestion</asp:ListItem>
                      <asp:ListItem>Feedback</asp:ListItem>
                      <asp:ListItem>Complain</asp:ListItem>
                  </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is required" ControlToValidate="SubjectDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" InitialValue="Select"></asp:RequiredFieldValidator>
                </div>

                <div class="col-md-12">
                  <%--<textarea class="form-control" name="message" rows="6" placeholder="Message" required=""></textarea>--%>
                  <asp:TextBox ID="MsgTextBox" class="form-control" TextMode="MultiLine" Columns="50" Rows="5" placeholder="Message"  runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Message is required" ControlToValidate="MsgTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>

                </div>

                <div class="col-md-12 text-center">
                  <%--<div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank you!</div>--%>

                  <%--<button type="submit">Send Message</button>--%>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="btn btn-info" OnClick="SubmitButton_Click" />
                </div>

              </div>
            </form>
          </div><!-- End Contact Form -->

        </div>

      </div>

    </section><!-- /Contact Section -->
</asp:Content>
