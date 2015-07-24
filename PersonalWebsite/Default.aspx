<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PersonalWebsite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Brenden Owens</h1>
        <p class="lead">Welcome to my website. This site is my ongoing resume and project to show off my skills. It is built off of C#, ASP.NET web forms, bootstrap, and MSSQL database backend. It's even open source.</p>
        <p><a href="https://github.com/brendenowens/PersonalWebsite" class="btn btn-primary btn-lg">Source Code &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2 class="text text-success">Linked-In</h2>
            <p>
                I also have a LinkedIn page that I keep updated and also has slightly more information than I can keep on here, and it shows what other skills that I have.
            </p>
            <p>
                <a class="btn btn-success" href="https://www.linkedin.com/pub/brenden-owens/83/783/117">Vist &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 class="text text-info">Contact Me</h2>
            <p>
                Did you like the way I created my website and also some of my projects? Do you have questions for me about anything on the site that you would like to know more about? Send me an email and I will try to give you the best answer that I can.
            </p>
            <p>
                <a class="btn btn-info" href="Contact">Contact &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 class="text text-primary">Blog Site</h2>
            <p>
                I even run a blog where I talk about programming and do little tutorials for Arduino and the Raspberry Pi to help other's learn about programming in a very simple and easy way. Drop on by to see what it is all about.
            </p>
            <p>
                <a class="btn btn-primary" href="http://willprogramforcoffee.blogspot.com/">Blog &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
