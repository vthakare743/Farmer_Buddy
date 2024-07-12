<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="ADMIN_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                Dashboard
            </div>
            <div class="panel-body">
                <form role="form">

    <link href="StyleSheet.css" rel="stylesheet" />

  <div class="container-fluid">
    <div class="row">
        <div class="col-lg-4">
        <div id="first">
      <div class="col-sm-6 col-md-4">
        <div class="card">
          <div class="card-body"> 
             <br />

              <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/ADMIN/User.aspx"><h3> <b> Users </b> </h3></asp:HyperLink>

            <h2 class="card-title"> <b> <i class="fa fa-user "></i> </b></h2>
              <asp:Label ID="lblUserCount" runat="server" Text=""></asp:Label>
            <p class="card-text"> </p>
          </div>
        </div>
          
      </div>
            </div>
            <br />
            </div>


         <div class="col-lg-4">
        <div id="Div1">
      <div class="col-sm-6 col-md-4">
        <div class="card">
          <div class="card-body">
              <br />
              <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/ADMIN/ViewSchemes.aspx"> <h3> <b> Scheme </b> </h3> </asp:HyperLink>

            <h2 class="card-title"> <b><center> <i class="fa fa-university"></i></center> </b></h2>
             <asp:Label ID="lblscheme" runat="server" ForeColor="White"></asp:Label>
            <p class="card-text"> </p>
          </div>
        </div>
      </div>
            </div>
             <br />
            </div>

         <div class="col-lg-4">
        <%--<div class="col-md-8">--%>
                                    <%--<div class="card-header">--%>
        <div id="second">
      <div class="col-sm-6 col-md-4">
        <div class="card">
          <div class="card-body">
              <br />

              <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/ADMIN/ViewVideo.aspx"> <h3> <b> Videos </b> </h3> </asp:HyperLink>

            <h2 class="card-title"> <b> <center>  <i class="fa fa-video-camera "></i></center> </b> </h2>
              <asp:Label ID="lblvideo" runat="server" Text=""></asp:Label>
            <p class="card-text"> </p>
          <%--</div>--%>
        </div>
      </div>
            </div>
                                        </div>
            </div>
        </div>
      </div>
    <br />
    

         <div class="container-fluid">
    <div class="row">
         <div class="col-lg-4">
        <div id="third">
      <div class="col-sm-6 col-md-4">
        <div class="card">
          <div class="card-body">
              <br />

              <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/ADMIN/ViewManagement.aspx"> <h3> <b> Management </b> </h3> </asp:HyperLink>

            <h2 class="card-title"> <b> <center> <i class="fa fa-yelp"></i></center> </b> </h2>
              <asp:Label ID="lblmanage" runat="server" Text=""></asp:Label>
            <p class="card-text"> </p>
          </div>
        </div>
      </div>
            </div>
    <br />
        </div>

        <div class="col-lg-4">
         <%-- <div class="col-md-8">
                                    <div class="card-header">--%>
        <div id="forth">
      <div class="col-sm-6 col-md-4">
        <div class="card">
          <div class="card-body">
              <br />

              <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="White" NavigateUrl="~/ADMIN/ViewArticles.aspx"> <h3> <b> Articles </b> </h3> </asp:HyperLink>

      <h2 class="card-title"> <b> <center> <i class="fa fa-coffee"></i></center> </b></h2>
              <asp:Label ID="lblarticle" runat="server" Text=""></asp:Label>
            <p class="card-text"> </p>
          <%--</div>--%>
        </div>
      </div>
  </div>
    </div>
            <br />
      </div>

         <div class="col-lg-4">
        <%--<div class="col-md-8">--%>
                                    <%--<div class="card-header">--%>
        <div id="Div2">
      <div class="col-sm-6 col-md-4">
        <div class="card">
          <div class="card-body">
             <br />

              <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="White" NavigateUrl="~/ADMIN/ViewInsurance.aspx">  <h3> <b> Insurance </b> </h3> </asp:HyperLink>

            <h2 class="card-title"> <b> <center> <i class="fa fa-yelp"></i></center> </b> </h2>
              <asp:Label ID="lblinsurance" runat="server" Text=""></asp:Label>
            <p class="card-text"> </p>
          <%--</div>--%>
        </div>
      </div>
            </div>
                                        </div>
            </div>
             </div>
             </div>
                  
                     </form>
            </div>
            </div>
        </div>
   
  
</asp:Content>

