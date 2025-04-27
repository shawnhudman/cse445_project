<%@ Page Title="Staff - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="_445_project.Staff" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h3>Staff Home</h3>
        
        <section class="row mb-5 gx-5">
            <div class="col-12 col-md-6">
                <h2>All Members</h2>
                <asp:GridView
                    ID="membersGridView"
                    runat="server"
                    AutoGenerateColumns="false"
                    DataKeyNames="Username"
                    OnRowCommand="membersGridView_RowCommand"
                    CssClass="table table-striped">

                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="Username" />

                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:Button
                                    runat="server"
                                    CssClass="btn btn-sm btn-danger"
                                    Text="Delete"
                                    CommandName="DeleteUser"
                                    CommandArgument='<%# Eval("Username") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>

        <!-- section for adding more staff members -->
            <div class="col-12 col-md-6">
                <h2>Add Staff Account Below</h2>

                <asp:Label
                    ID="lblResult"
                    runat="server"
                    Text="" />
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
                        TextMode="Password"
                        Style="margin-bottom: 16px;" />
                </div>

                <asp:Button
                    ID="btnAddAccount"
                    runat="server"
                    Text="Add Account"
                    OnClick="btnAddAccountClick"
                    CssClass="btn btn-primary btn-md" />
            </div>
        </section>
    </main>
</asp:Content>
