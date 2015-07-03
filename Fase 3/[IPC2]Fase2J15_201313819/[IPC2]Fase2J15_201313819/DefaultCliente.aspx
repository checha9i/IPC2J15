<%@ Page Title="Home Page cliente" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DefaultCliente.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.DefaultCliente" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
              <p>La empresa “Quetzal Express” es líder, que presta servicios de POBOX y envíos, para que
negocios internacionales, como e-commerce, sean accesibles para los usuarios en Guatemala.</p>
        
         <!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
 
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img src="/Resources/images.jpg" style="width:100%" class="img-responsive">
      <div class="container">
        <div class="carousel-caption">
  
       
    
        </div>
      </div>
    </div>
    <div class="item">
    <img src="/Resources/quetzal-express-logo.jpg" style="width:100%" class="img-responsive">
      <div class="container">
        <div class="carousel-caption">
      
        </div>
      </div>
    </div>
    
  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="icon-prev"></span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="icon-next"></span>
  </a>  
</div>
<!-- /.carousel -->



    </div>

   

</asp:Content>
