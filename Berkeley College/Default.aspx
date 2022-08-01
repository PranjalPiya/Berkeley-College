<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Berkeley_College._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <style>
            .jumbotron{
                 background:url(Images/berkeley_college.jpeg) no-repeat center fixed;
                 background-size:cover;
                 background-color:  rgba(255,255,255,0.5);
                 background-blend-mode: lighten;
                
                 color:black;
                 width: 100%;
                 height:100%;
                 
              
              
                  
            }
         
           
        </style>

        <h1 >Berkeley College </h1>
        <p class="lead">Berkeley College is a private for-profit college with campuses in New York, New Jersey, and online. It was founded in 1931 and offers undergraduate and graduate degrees and certificate programs.</p>
        <p><a href="~/About" runat="server" class="btn btn-primary btn-lg">Learn more &raquo; </a></p>
    </div>

     <div class="Student">
         <style> 
             .Student{
                 
                text-align: center;
                
             }
         </style>
            <h2>Meet Our Student</h2>
            <p>
               <asp:Image ID="Image2" runat="server" ImageUrl="Images/student.png" Width="60%" Height="60%" />
            </p>
            <p>
                <a class="btn btn-default" runat="server" href="~/student_details.aspx">Learn more &raquo;</a>
            </p>
        </div>

    
     <div class="College">
         <style> 
             .College{
                 
                text-align: center;
                
             }
         </style>
            <h2>College Buildings</h2>
            <p>
               <asp:Image ID="imgCollege" runat="server" ImageUrl="Images/college.png" Width="60%" Height="60%" />
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>

</asp:Content>
