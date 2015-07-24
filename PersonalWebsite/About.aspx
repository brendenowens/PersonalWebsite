<%@ Page Title="Resume" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PersonalWebsite.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Here is a current copy of my resume if you care to have it.</h3>
    <p>It is an embeded iframe directly connected to the Google Doc in my account.</p>
    <iframe runat="server" id="resumeDoc" src="https://drive.google.com/file/d/0Bw1i-mAEdk77UFpOSGh5d3ZXaGc/preview" style="overflow:hidden; display:block; position: absolute; height: 100%; width: 100%"></iframe>
</asp:Content>
