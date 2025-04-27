<%@ Page Title="Staff Sign In – Text Utilities" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffSignIn.aspx.cs" Inherits="_445_project.StaffSignIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <!-- header -->
        <section class="row" aria-labelledby="signInTitle">
            <h1 id="signInTitle">Staff Log In</h1>
            <p class="lead">
                Welcome staff, sign in below.
            </p>
        </section>

        <!-- form section -->
        <section class="row">
            <div class="col-md-6">
                <asp:Label
                    runat="server"
                    ID="lblError"
                    CssClass="mb-3" />

                <div class="form-group">
                    <asp:Label
                        AssociatedControlID="textUsername"
                        runat="server"
                        >Username</asp:Label>
                    <asp:TextBox
                        ID="textUsername"
                        runat="server"
                        CssClass="form-control" />
                </div>

                <div class="form-group">
                    <asp:Label
                        AssociatedControlID="textPassword"
                        runat="server"
                        >Password</asp:Label>
                    <asp:TextBox
                        ID="textPassword"
                        runat="server"
                        CssClass="form-control"
                        TextMode="Password"/>
                </div>

                <asp:Button
                    ID="btnLogIn"
                    runat="server"
                    Text="Log In"
                    OnClick="btnLogInClick"
                    CssClass="btn btn-primary btn-md" />
                    
            </div>


        </section>
    </main>
</asp:Content>
