<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    
    <div class="container">
        <br />
        <br />
        <div class="col-md-1"></div>
   <div class="col-md-10">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="C:/Users/mariu/source/repos/Zagarki/WebApplication1/src/1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="C:/Users/mariu/source/repos/Zagarki/WebApplication1/src/2.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="C:/Users/mariu/source/repos/Zagarki/WebApplication1/src/3.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
        </div>

    <div class="col-md-1"></div>
    



      

   

</asp:Content>