<%@ Page Title="Finished Projects" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Finished.aspx.cs" Inherits="PersonalWebsite.Finished" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-primary"><%: Title %>.</h2>
    <h4 class="text-muted">This a current list of my finished projects along with the links to the source code on GitHub. </h4>
    <h4 class="text-muted">All the information is stored in a MSSQL database backend.</h4>
    <br />
    <div runat="server" id="finishedProjectsDiv">

    </div>
        
</asp:Content>
