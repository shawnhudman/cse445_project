<%@ Page Title="Register – Text Utilities" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_445_project.Register" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <!-- header -->
        <section class="row" aria-labelledby="registerTitle">
            <h1 id="registerTitle">Member Registration</h1>
            <p class="lead">
                Sign up now to gain access to our text modifcation tools. Sign up below.
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

                <div class="form-group">
                    <asp:Label
                        AssociatedControlID="textConfirmPassword"
                        runat="server"
                        >Confirm Passowrd</asp:Label>
                    <asp:TextBox
                        ID="textConfirmPassword"
                        runat="server"
                        CssClass="form-control"
                        TextMode="Password" />
                </div>

                <div class="g-recaptcha mb-3" data-sitekey="6LceoyYrAAAAAL_rLoMi_Xh_KymKV7RjKQgGW3wP"></div>
                <asp:Button
                    ID="btnRegister"
                    runat="server"
                    Text="Create Account"
                    OnClick="btnRegisterClick"
                    CssClass="btn btn-primary btn-md" />
                <asp:ValidationSummary runat="server" CssClass="text-danger mt-2" />

                <p class="mt-2">
                    Returning?
                    <asp:HyperLink
                        runat="server"
                        NavigateUrl="~/SignIn.aspx"
                        CssClass="ml-1">
                        Sign in here.
                    </asp:HyperLink>
                </p>

                <p class="mt-2">
                    Staff?
                    <asp:HyperLink
                        runat="server"
                        NavigateUrl="~/StaffSignIn.aspx"
                        CssClass="ml-1">
                        Staff sign in here.
                    </asp:HyperLink>
                </p>
                    
            </div>


        </section>
    </main>
</asp:Content>