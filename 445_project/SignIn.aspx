<%@ Page Title="Sign In – Text Utilities" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="_445_project.SignIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <!-- header -->
        <section class="row" aria-labelledby="signInTitle">
            <h1 id="signInTitle">Member Log In</h1>
            <p class="lead">
                Welcome back, sign in below.
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

                <p class="mt-2">
                    Not a member?
                    <asp:HyperLink
                        runat="server"
                        NavigateUrl="~/Register.aspx"
                        CssClass="ml-1">
                        Create account here.
                    </asp:HyperLink>
                </p>
                    
            </div>


        </section>
    </main>
</asp:Content>
