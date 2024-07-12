<%@ Page Title="" Language="C#" MasterPageFile="~/USER/LoginMasterPage.master" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="USER_Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          Video
                        </div>
            <div class="panel-body">
                <from role="from">

                     <div class="col-md-3">
                        <div class="form-group">
                            <div class="row-gx-5">
                                <asp:Label ID="Label1" runat="server" Text="Select Type" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                <asp:DropDownList ID="ddlSelect" runat="server" class="form-control" AutoPostBack="True" >
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Title</asp:ListItem>
                                   
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                     <div class="col-md-3">
                        <div class="form-group">

                            <asp:Label ID="Label2" runat="server" Text="Search By" Font-Size="Medium" ForeColor="Black"></asp:Label>

                            <asp:TextBox ID="txtsearch" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-check mx-sm-2">

                            <asp:Label ID="Label3" runat="server" Text="Search"></asp:Label>
                        </div>

                        <asp:Button ID="btnSearch" runat="server" Text="Search" ForeColor="Black" class="btn btn-success mb-2" width="80px" OnClick="btnSearch_Click" />
                        <%--<asp:Label ID="lblshow" runat="server" Text=""></asp:Label>--%>
                    </div>
                    <br />
<br />

                   <asp:Panel ID="Panel1" runat="server" Width="1000px" ScrollBars="Vertical">

                       <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        <ItemTemplate>

                             <div class="column">
                <div class="card col-md-4">

                    <iframe width="300" height="235" src='<%#Eval ("link") %>' title="YouTube Video Player" frameborder="0" allow="accelerometter; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <br />
                     <asp:Label ID="Title" runat="server" Font-Size="Large" Text='<%# Eval("title") %>'></asp:Label>
                <br />

                 
                   </div>
                        </div> 
  
                            </ItemTemplate>
                        </asp:Repeater>
                    </asp:Panel>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [VideosData]"></asp:SqlDataSource>


                        </from>
                 </div>
        </div>
    </div>
</asp:Content>

































                  <%--  <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate >
                            <table class="table table-hover table table-striped ">
                                <tr  class="p-3 mb-2 bg-primary text-white">
                                    <td>
                                        Sr.No.
                                    </td>

                                    <td>
                                        Title
                                    </td>

                                    <td>
                                        Link
                                    </td>

                                    <td>
                                        Description
                                    </td>

                                </tr>

                             </HeaderTemplate>
                <ItemTemplate>
                    <tr class="table table-hover table table-bordered">
                        <td>
                             <%#Eval("vid") %>
                        </td>

                        <td>
                           <%#Eval("title") %> 
                        </td>

                        <td>
                           <%#Eval("link") %> 
                        </td>

                        <td>
                             <%#Eval("description") %>
                        </td>

                    </tr>

                     </ItemTemplate>
            <FooterTemplate>
                  </table>
                           </FooterTemplate>


                    </asp:Repeater>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT [vid], [title], [link], [description] FROM [VideosData]"></asp:SqlDataSource>
                --%>
 

