<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewVideo.aspx.cs" Inherits="ADMIN_ViewVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          View Videos
                        </div>
            <div class="panel-body">
                <form role="form">

                     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        <ItemTemplate>

                             <div class="column">
                <div class="card col-md-4">

                    <iframe width="350" height="235" src='<%#Eval ("link") %>' title="YouTube Video Player" frameborder="0" allow="accelerometter; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <br />
                     <asp:Label ID="lbltitle" runat="server" Font-Size="Large" Text='<%# Eval("title") %>'></asp:Label>
                <br />

                 

                    <asp:HyperLink ID="view1" Text="View" Class="btn btn-success" runat="server" Width="80px" ForeColor="Black"
                     navigateUrl='<%#"~/ADMIN/ShowVideo.aspx?vid="+ Server.UrlEncode(Eval("vid").ToString()) %>' />

                   
                   </div>
                        </div> 
  
                            </ItemTemplate>
                        </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [VideosData]"></asp:SqlDataSource>

                    <br />
                    
                       
                    </form>
            </div>
            <center>
             <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/Home.aspx">Back</asp:HyperLink>
                </center>
        </div>
    </div>
</asp:Content>

