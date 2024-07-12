<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowUser.aspx.cs" Inherits="ADMIN_ShowUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                User
            </div>
            <div class="panel-body">
                <form role="form">

                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        <ItemTemplate>
                            
                            <div class="card-body">
                                   <div class="row">

                                       <div class="card">
                                           <div class="col-lg-4">
                                        
                                                            <asp:Label ID="lblfirstname" runat="server" Font-Size="Large" Text='<%# Eval("first_name") %>'></asp:Label>
                                                            
                                               <asp:Label ID="lbllastname" runat="server" Font-Size="Large" Text='<%# Eval("last_name") %>'></asp:Label>
                                                            <br />
                                               <br />
                                                            <img src='photo/<%# Eval("photo") %>' alt="" height="400px" width="300px" style="border-style: double; border-width: thin; border-color: #000000" />
                                                            <br />
                                               <br />
                                                            <asp:Label ID="Label3" runat="server" Text="E-mil:-"  ForeColor="#00ccff"></asp:Label>
                                                            <asp:Label ID="lblemail" runat="server" Text='<%# Eval("e_mail") %>'></asp:Label>
                                                            <br />
                                                   
                     </div>
                                                    </div>
                                    
                                                    <div class="col-md-8">
                                    <div class="card-header">
                                        <asp:Label ID="Label5" runat="server" Text="Address:-" ForeColor="#00ccff"></asp:Label>
                                        <br />
                                                        <asp:Label ID="lbladdress" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                                    </div>
                                                </div> 
                                            </div>
                                        </div>
                                        
                                
                        </ItemTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand=""></asp:SqlDataSource>
                    <br />

                     <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/User.aspx" >Back</asp:HyperLink>
                     <asp:Button ID="btnedit" runat="server" class="btn btn-success" Text="Edit" ForeColor="Black" Width="80px" OnClick="btnedit_Click" />
                    <asp:Button ID="Button2" runat="server"  class="btn btn-danger" Text="Delete" ForeColor="Black" Width="80px" OnClick="Button2_Click" />
      
                                                      <%--<asp:Button ID="btndelete" runat="server" BackColor="Green" ForeColor="Black" Text="Delete" Width="100px" OnClick="btndelete_Click" />--%>
       
                                               <br />
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

                </form>
            </div>
        </div>
    </div>
</asp:Content>

