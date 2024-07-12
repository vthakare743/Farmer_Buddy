<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowVideo.aspx.cs" Inherits="ADMIN_ShowVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                Show Video
            </div>
            <div class="panel-body">
                <form role="form">

                     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        <ItemTemplate>
                           
                     <div class="card-body">
                                   <div class="row">

                                       <div class="card">
                                           <div class="col-lg-4">
                                        

                    <iframe width="350" height="235" src='<%# Eval("link") %>' title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <br />
                                               <br />
                    <asp:Label ID="txttitle" runat="server" Text="Title:-" ForeColor="#00ccff"></asp:Label>
                    <asp:Label ID="lbltitle" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                <br />

                </div>
                    </div>

                 <div class="col-md-8">
                                    <div class="card-header">
                                        <asp:Label ID="Label5" runat="server" Text="Description:-" ForeColor="#00ccff"></asp:Label>
                                        <br />
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                        <br />

                                        <asp:Label ID="Label2" runat="server" Text="Link:-" ForeColor="#00ccff"></asp:Label>
                                        <br />
                                        <asp:Label ID="lblLink" width="150" height="100" runat="server" Text='<%# Eval("link") %>' ></asp:Label>
                    </div>
                    </div>
                                       </div>
                         </div>

</ItemTemplate>
                        </asp:Repeater>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [VideosData]"></asp:SqlDataSource>
                    <br />

                    <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/ViewVideo.aspx">Back</asp:HyperLink>
                    <asp:Button ID="btnedit" runat="server" class="btn btn-success" ForeColor="Black" Text="Edit" Width="100px" OnClick="btnedit_Click" />
                    <asp:Button ID="btndelete" runat="server" class="btn btn-danger" ForeColor="Black" Text="Delete" Width="132px" OnClick="btndelete_Click"/>
                    <br />
                    <%--<asp:Label ID="Label2" runat="server" Text=""></asp:Label>--%>

                     </form>
            </div>
            </div>
        </div>
   
</asp:Content>

