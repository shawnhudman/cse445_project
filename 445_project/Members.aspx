<%@ Page Title="Members - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="_445_project.Members" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="membersTitle">
        <section class="row" aria-labelledby="membersTitle">
            <h1 id="membersTitle" class="col-12">Member Home</h1>
        </section>
        
        <!-- This contains the large input text box -->
        <section class="row mt-3">
            <div class="col-12">
                <asp:TextBox
                    ID="textInput"
                    runat="server"
                    CssClass="form-control"
                    TextMode="MultiLine"
                    Rows="20"
                    Style="width:70%; max-width:100%;"
                    Placeholder="Enter text to modify here, or pull from a website." />
            </div>
        </section>


        <!-- This is the section for the services and their controls -->
        <section class="row mt-3">
            <div class="col-12 col-md-6">
                <div class="d-flex gap-4 align-baseline-items-start">
                    <div class="pe-4 border-end">
                        <div class="form-group mb-6">
                            <asp:TextBox
                                ID="findTextBox"
                                runat="server"
                                CssClass="form-control"
                                Placeholder="Place word to find here:" />
                        </div>

                        <div class="form-group mb-3">
                            <asp:TextBox
                                ID="ReplaceTextBox"
                                runat="server"
                                CssClass="form-control"
                                Placeholder="Word to replace with:" />
                        </div>

                        <asp:Button
                            ID="btnFindAndReplace"
                            runat="server"
                            Text="Find and Replace"
                            OnClick="btnFindAndReplaceClick"
                            CssClass="btn btn-primary w-100 mb-2" />
                    </div>
                        <div class="pe-4 border-end">
                            <div class="form-group mb-6">
                                <asp:TextBox
                                    ID="TextBox1"
                                    runat="server"
                                    CssClass="form-control"
                                    Placeholder="Place word to find here:" />
                            </div>

                            <div class="form-group mb-3">
                                <asp:TextBox
                                    ID="TextBox2"
                                    runat="server"
                                    CssClass="form-control"
                                    Placeholder="Word to replace with:" />
                            </div>

                            <asp:Button
                                ID="Button1"
                                runat="server"
                                Text="Find and Replace"
                                OnClick="btnFindAndReplaceClick"
                                CssClass="btn btn-primary w-100 mb-2" />
                        </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
