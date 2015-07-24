<%@ Page Title="Current Projects" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Current.aspx.cs" Inherits="PersonalWebsite.Current" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text text-info"><%: Title %>.</h2>
    <h4 >The projects that I am currently working on during my own free time. </h4>
    <h4 >They have GitHub repositories but the source code will be updated as I work on them. </h4>
   <div runat="server" id="currentProjectsDiv">
      
   </div>
</asp:Content>
