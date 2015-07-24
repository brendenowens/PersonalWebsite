<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PersonalWebsite.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div runat="server" class="bs-docs-section">
        <div runat="server" class="page-header">
        <div runat="server" class="row">
            <div runat="server" class="col-lg-12">
  <h3>Contacting Me.</h3>
            </div>
        </div>
        </div>
    </div>
    <address class="col-lg-12">
        2055 N. 325 E.<br />
        Knox, IN 46534<br />
        <abbr title="Phone">P:</abbr>
        574.806.2522
    </address>

  <div runat="server" class="bs-docs-section">
        <div runat="server" class="page-header">
        <div runat="server" class="row">
            <div runat="server" class="col-lg-12">
  <h3>Message Me.</h3>
            </div>
        </div>
        </div>
    </div>
<asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit" CssClass="col-lg-12">
   
    <p>
        <label class="text-primary">Your name:</label> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
            ControlToValidate="Name" ValidationGroup="save" CssClass="text-warning"/><br />
        <asp:TextBox ID="Name" runat="server" Width="250px" cssclass="form-control"/><br />
        <label class="text-primary">Your email address:</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
            ControlToValidate="Email" ValidationGroup="save" CssClass="text-warning"/><br />
        <asp:TextBox ID="Email" runat="server" Width="250px" cssclass="form-control"/>
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="Email"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
            ValidationGroup="save" CssClass="text-warning"/><br />
        <label class="text-primary">Subject:</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
            ControlToValidate="Subject" ValidationGroup="save" CssClass="text-warning"/><br />
        <asp:TextBox ID="Subject" runat="server" Width="400px" cssclass="form-control"/><br />
        <label class="text-primary">Message:</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
            ControlToValidate="Comments" ValidationGroup="save" CssClass="text-warning"/><br />
        <asp:TextBox ID="Comments" runat="server" 
                TextMode="MultiLine" Rows="10" Width="400px" cssclass="form-control"/>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Send" 
                    OnClick="Button1_Click" ValidationGroup="save" CssClass="btn btn-primary" />
    </p>
</asp:Panel>
<p>
    <asp:Label ID="DisplayMessage" runat="server" Visible="false" Cssclass="Text-info"/>
</p>
    
</asp:Content>
