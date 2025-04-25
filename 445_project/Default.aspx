<%@ Page Title="Home Page - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_445_project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>

        <!-- I used the default template that comes with installing the web form preset and modified it to fit our project needs. -->
        <!-- The Site.Master handles the header navigation -->

        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Text Utilities</h1>
            <p class="lead">Our service provides a multitude of utilities to help you search and modify large amounts of text. Learn more about our features below!</p>
        </section>

        <!-- This is the section for the text explaining log in and admin log in -->
        <div class="row">
            <section class="col-md-4" aria-labelledby="logInTitle">
                <h2 id="logInTitle">Become a Member</h2>
                <p>
                    Welcome to our web application! Please press this button in order to be redirected to our log in page.
                </p>
                <p>
                    <asp:Button
                        ID="btnLogIn"
                        runat="server"
                        Text="Log In"
                        OnClick="btnLogInClick"
                        CssClass="btn btn-primary btn-md" />
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="alreadyMember">
                <h2 id="alreadyMember">Part of our Staff?</h2>
                <p>
                    Hello staff member, in order to log in and access the administrator tools, please navigate to our Staff page.
                </p>
                <p>
                    <asp:Button
                        ID="btnStaffLogIn"
                        runat="server"
                        Text="Staff Log In"
                        OnClick="btnStaffLogInClick"
                        CssClass="btn btn-primary btn-md" />
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="servicesTitle">
                <h2 id="servicesTitle">Our Services</h2>
                <p>
                    Below is a comprehensive list of the services our application provides. Feel free to try each service using the TryIt buttons!
                </p>
            </section>
        </div>

        <!-- This is the table section, I have not implemented anything i just filled in the columns and values for the assignment,
             Just replace with your name and what you implemented -->

            <section class="row" aria-labelledby="servicesTableTitle">
              <h2 id="servicesTableTitle">Service Directory</h2>
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>Provider</th>
                    <th>Page / Component Type</th>
                    <th>Operation Name</th>
                    <th>Parameters</th>
                    <th>Return Type</th>
                    <th>Description</th>
                    <th style="width: 400px;">TryIt</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>Shawn Hudman</td>
                    <td>Global.asax</td>
                    <td>Session_Start/End</td>
                    <td>n/a</td>
                    <td>n/a</td>
                    <td>Updates active users in session state.</td>
                    <td>
                      <asp:Button runat="server"
                        Text="Show Active Users"
                        OnClick="btnShowUsers"
                        CssClass="btn btn-primary btn-md" />
                      <asp:Label 
                        ID="lblActiveUsers" 
                        runat="server" 
                        Text="" 
                        CssClass="ml-2" />
                    </td>
                  </tr>

                  <tr>
                    <td>Shawn Hudman</td>
                    <td>DLL Password Verification</td>
                    <td>Encrypt / Verify</td>
                    <td>string passwordRaw</td>
                    <td>string passwordEncrypted, boolean verified</td>
                    <td>Verifies password against stored SHA256 hash. First a password is hashed and stored, then verifying will compare against stored password.</td>
                    <td>
                        <asp:TextBox
                            ID="passwordInputTextBox"
                            runat="server"
                            Placeholder="Hash / Verify password here:" />

                        <asp:Button runat="server"
                            Text="Store Hash"
                            OnClick="btnEncrypt"
                            CssClass="btn btn-primary btn-md" />
                        <asp:Label
                            ID="lblEncrypted"
                            runat="server"
                            Text=""
                            CssClass="ml-2" />

                        <asp:Button
                            Text="Click to verify password"
                            runat="server"
                            OnClick="btnVerify"
                            CssClass="btn btn-primary btn-md" />
                        <asp:Label
                            ID="lblVerifyResult"
                            runat="server"
                            Text="Result will be here"
                            CssClass="ml-2" />

                    </td>
                  </tr>

                  <tr>
                    <td>Shawn Hudman</td>
                    <td>Web Service</td>
                    <td>Find and Replace</td>
                    <td>string text, string findWord, string replaceWord</td>
                    <td>string returnString</td>
                    <td>Finds and replaces a given word in the text, then returns the modified text.</td>
                    <td>
                        <asp:TextBox
                            ID="InputTextBox"
                            runat="server"
                            Placeholder="Enter text here:" />
                        <asp:TextBox
                            ID="findTextBox"
                            runat="server"
                            Placeholder="Place word to find here:" />
                        <asp:TextBox
                            ID="ReplaceTextBox"
                            runat="server"
                            Placeholder="Word to replace with:" />

                        <asp:Button runat="server"
                            Text="Find and Replace Web Service"
                            OnClick="btnCallWebService"
                            CssClass="btn btn-primary btn-md" />
                        <asp:Label
                            ID="lblWebServiceResult"
                            runat="server"
                            Text="Result Here:"
                            CssClass="ml-2" />
                    </td>
                  </tr>
                </tbody>
              </table>
            </section>
    </main>

</asp:Content>
