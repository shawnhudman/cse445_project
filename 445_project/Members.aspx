<%@ Page Title="Members - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="_445_project.Members" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="membersTitle">
        <section class="row" aria-labelledby="membersTitle">
            <h1 id="membersTitle" class="col-12">Member Home</h1>
        </section>
        
        <!-- This contains the large input text box -->
        <section class="row mt-3">
            <div class="col-12">
                <div class="d-flex align-items-stretch">
                    <asp:TextBox
                        ID="textInput"
                        runat="server"
                        CssClass="form-control"
                        TextMode="MultiLine"
                        Rows="20"
                        Style="width:70%; max-width:100%;"
                        Placeholder="Enter text to modify here, or pull from a website." />
            
                <div class="mx-3"></div>

                <asp:TextBox
                    ID="textJsonCount"
                    runat="server"
                    CssClass="form-control"
                    TextMode="MultiLine"
                    Rows="20"
                    Placeholder="Json word count will appear here."
                    ReadOnly="true"
                    Style="width:40%;"/>
                </div>
            </div>
        </section>


        <!-- This is the section for the services and their controls -->
        <section class="row mt-3">
            <div class="col-12 col-md-6">
                <div class="d-flex gap-4 align-baseline-items-start">
                    <div class="pe-4 border-end">
                        <div class="form-group mb-3">
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
                                Placeholder="Word to replace with:"
                                Style="margin-bottom: 26px;"/>
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
                            <p>Make sure the link begins with https://</p>
                        </div>
                        <div class="form-group mb-3">
                            <asp:TextBox
                                ID="linkTextBox"
                                runat="server"
                                CssClass="form-control"
                                Placeholder="Place link to grab contents." />
                        </div>

                        <asp:Button
                            ID="btnGetContents"
                            runat="server"
                            Text="Get Contents URL"
                            OnClick="btnGetContentsClick"
                            CssClass="btn btn-primary w-100 mb-2" />
                    </div>

                    <div class="pe-4 border-end">
                        <div class="form-group mb-6">
                            <p>Display total word count</p>
                        </div>
                        <div class="form-group mb-3">
                            <asp:Label
                                ID="lblWordCount"
                                runat="server"
                                Text=" - "
                                CssClass="form-control" />

                        </div>

                        <asp:Button
                            ID="btnWordCount"
                            runat="server"
                            Text="Get Word Count"
                            OnClick="btnGetWordCountClick"
                            CssClass="btn btn-primary w-100 mb-2" />
                    </div>

                    <div class="pe-4 border-end">
                        <div class="form-group mb-6">
                            <p style="margin-bottom: 22px;">Filters out insignificant words such as “a”, “an”, “in”, “on”, “the”, “is”, etc</p>
                        </div>

                        <asp:Button
                            ID="btnFilter"
                            runat="server"
                            Text="        Filter Text        "
                            OnClick="btnFilterClick"
                            CssClass="btn btn-primary w-100 mb-2" />
                    </div>

                    <div class="pe-4 border-end">
                        <div class="form-group mb-6">
                            <p style="margin-bottom: 93px;">Reverses the text input</p>
                        </div>

                        <asp:Button
                            ID="btnReverse"
                            runat="server"
                            Text="        Reverse Text        "
                            OnClick="btnReverseClick"
                            CssClass="btn btn-primary w-100 mb-2" />
                    </div>

                    <div class="pe-4 border-end">
                        <div class="form-group mb-6">
                            <p style="margin-bottom: 68px;">Counts the occurences of every word in json format.</p>
                        </div>

                        <asp:Button
                            ID="btnCountEveryWord"
                            runat="server"
                            Text="        Count Words        "
                            OnClick="btnCountEveryWordClick"
                            CssClass="btn btn-primary w-100 mb-2" />
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
