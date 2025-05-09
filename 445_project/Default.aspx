﻿<%@ Page Title="Home Page - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_445_project._Default" ValidateRequest="false" %>

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
                    <tr class="table-secondary">
                        <td colspan="7" class="text-center">
                            <strong>Percentage of overall contribution: Shawn Hudman - 33% | Stephaan Dahdal = 33% | Colton Hutchins - 33%</strong>
                        </td>
                    </tr>
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

                  <tr>
                    <td>Shawn Hudman</td>
                    <td>Web Service</td>
                    <td>Find and Replace</td>
                    <td>string text, string findWord, string replaceWord</td>
                    <td>string returnString</td>
                    <td>Finds and replaces a given word in the text, then returns the modified text.</td>
                    <td>
                        <asp:TextBox
                            ID="TextBox1"
                            runat="server"
                            Placeholder="Enter text here:" />
                        <asp:TextBox
                            ID="TextBox2"
                            runat="server"
                            Placeholder="Place word to find here:" />
                        <asp:TextBox
                            ID="TextBox3"
                            runat="server"
                            Placeholder="Word to replace with:" />

                        <asp:Button runat="server"
                            Text="Find and Replace Web Service"
                            OnClick="btnCallWebService"
                            CssClass="btn btn-primary btn-md" />
                        <asp:Label
                            ID="Label1"
                            runat="server"
                            Text="Result Here:"
                            CssClass="ml-2" />
                    </td>
                  </tr>

                  <tr>
                    <td>Shawn Hudman</td>
                    <td>Authentication</td>
                    <td>User Authentication</td>
                    <td>string username, string passwordHash</td>
                    <td>n/a</td>
                    <td>Controlled access to pages and implemented the register and sign up flow for members/staff.</td>
                    <td>n/a</td>
                  </tr>

                  <tr>
                      <td>Stephaan Dahdal</td>
                      <td>WCF Web Service</td>
                      <td>Web Download</td>
                      <td>string url</td>
                      <td>string fullWebData</td>
                      <td>Given a valid URL (must begin with https://), return a string of the entire web page's contents.</td>
                      <td>
                          <asp:TextBox
                              ID="url_tb"
                              runat="server"
                              Placeholder="Enter URL" />
                          <asp:Button ID="getContents_bt" runat="server" Text="Get Contents"
                              CssClass="btn btn-primary btn-md" OnClick="getContents_bt_Click" />
                          <asp:TextBox
                              ID="fullWebData_tb"
                              runat="server"
                              Placeholder="Pastable Contents Here" Width="80%"
                              TextMode="MultiLine" Rows="1" Columns="5"/>
                      </td>
                   </tr>

                   <tr>
                      <td>Stephaan Dahdal</td>
                      <td>RESTful Service</td>
                      <td>Word Occurences</td>
                      <td>string text</td>
                      <td>string json</td>
                      <td>Given text, return appeared words and their frequency pairs in JSON format.</td>
                      <td>
                          <asp:TextBox
                              ID="occurencesInput_tb"
                              runat="server"
                              Placeholder="Enter Text"/>
                          <asp:Button ID="getJson_bt" runat="server" Text="Get JSON"
                              CssClass="btn btn-primary btn-md" OnClick="getJson_bt_Click" />
                          <asp:TextBox
                              ID="json_tb"
                              runat="server"
                              Placeholder="Pastable Contents Here" Width="80%"
                              TextMode="MultiLine" Rows="1" Columns="5"/>
                      </td>
                   </tr>

                   <tr>
                      <td>Stephaan Dahdal</td>
                      <td>WCF Web Service</td>
                      <td>FilterWords</td>
                      <td>string text</td>
                      <td>string filteredText</td>
                      <td>Filters out filler/insignificant words such as “a”, “an”, “in”, “on”, “the”, “is”, etc.</td>
                      <td>
                          <asp:TextBox
                              ID="unfilteredText_tb"
                              runat="server"
                              Placeholder="Enter Text" />
                          <asp:Button ID="filter_bt" runat="server" Text="Filter Text"
                              CssClass="btn btn-primary btn-md" OnClick="filter_bt_Click" />
                          <asp:TextBox
                              ID="filteredText_tb"
                              runat="server"
                              Placeholder="Pastable Contents Here" Width="80%"
                              TextMode="MultiLine" Rows="1" Columns="5"/>
                      </td>
                   </tr>

					<!-- SHA-256 Hash -->
					<tr>
						<td>Colton Hutchins</td>
						<td>Static Utility</td>
						<td>SHA-256 Hash</td>
						<td>string input</td>
						<td>string hash</td>
						<td>Returns the SHA-256 hash of the input text.</td>
						<td>
							<asp:TextBox ID="hashInput_tb" runat="server"
                                         Placeholder="Enter text to hash" />
							<asp:Button  ID="btnHash" runat="server" Text="Hash"
                                         CssClass="btn btn-primary btn-md" OnClick="btnHash_Click" />
							<asp:Label   ID="lblHash" runat="server" Text="" CssClass="ml-2" />
						</td>
					</tr>

					<!-- Reverse Text -->
					<tr>
						<td>Colton Hutchins</td>
						<td>ASMX Web Service</td>
						<td>Reverse</td>
						<td>string input</td>
						<td>string reversedText</td>
						<td>Reverses the input text.</td>
						<td>
							<asp:TextBox ID="reverseInput_tb" runat="server"
                                         Placeholder="Enter text to reverse" />
							<asp:Button  ID="btnReverse" runat="server" Text="Reverse"
                                         CssClass="btn btn-primary btn-md" OnClick="btnReverse_Click" />
							<asp:Label   ID="lblReverseResult" runat="server" Text="" CssClass="ml-2" />
						</td>
					</tr>

					<!-- Word Count -->
					<tr>
						<td>Colton Hutchins</td>
						<td>Static Utility</td>
						<td>WordCount</td>
						<td>string input</td>
						<td>int count</td>
						<td>Counts the words in the input text.</td>
						<td>
							<asp:TextBox ID="wordCountInput_tb" runat="server"
                                         Placeholder="Enter text" />
							<asp:Button  ID="btnWordCount" runat="server" Text="Count"
                                         CssClass="btn btn-primary btn-md" OnClick="btnWordCount_Click" />
							<asp:Label   ID="lblWordCount" runat="server" Text="" CssClass="ml-2" />
						</td>
					</tr>
					

                </tbody>
              </table>
            </section>
    </main>

</asp:Content>
