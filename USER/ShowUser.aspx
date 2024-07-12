<%@ Page Title="" Language="C#" MasterPageFile="~/USER/LoginMasterPage.master" AutoEventWireup="true" CodeFile="ShowUser.aspx.cs" Inherits="USER_ShowUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          User
                        </div>
            <div class="panel-body">
                <from role="from1">


                    <asp:Panel ID="Panel1" runat="server" Width="1000px" ScrollBars="Vertical">

                 <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                     <ItemTemplate>
                            
                            <div class="card-body">
                                   <div class="row">

                                       <div class="card">
                                           <div class="col-lg-4">
                                        

                                               <asp:Label ID="Label2" runat="server" Text="Name:-"  ForeColor="#00ccff"></asp:Label>
                                                            <asp:Label ID="lblname" runat="server" Font-Size="Large" Text='<%# Eval("first_name") %>'></asp:Label>
                                                          <asp:Label ID="Label6" runat="server" Font-Size="Large" Text='<%# Eval("last_name") %>'></asp:Label>
                                                 <br />
                                               <br />
                                                            
                                               <img src='photo/<%# Eval("photo") %>' height="300px" width="300px" style BorderStyle="Double"/>
                                                            <br />
                                               <br />
                                                            <asp:Label ID="Label3" runat="server" Text="E-mail:-"  ForeColor="#00ccff"></asp:Label>
                                                            <asp:Label ID="lblmrp" runat="server" Text='<%# Eval("e_mail") %>'></asp:Label>
                                                            <br />
                                               
                                                            <asp:Label ID="Label4" runat="server" Text="Mobile No:-"  ForeColor="#00ccff"></asp:Label>
                                                            <asp:Label ID="lblsell" runat="server" Text='<%# Eval("mobile_no") %>'></asp:Label>
                                                            <br />
                     </div>
                                                    </div>
                                     
                                                    <div class="col-md-8">
                                    <div class="card-header">
                                        <asp:Label ID="Label5" runat="server" Text="Address:-" ForeColor="#00ccff"></asp:Label>
                                        <br />
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                                    </div>
                                                </div> 
                                            </div>
                                        </div>
                                        
                                
                        </ItemTemplate>
         
                     </asp:Repeater>
           </asp:Panel>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
           
                    </from>
                 </div>
        </div>
    </div>
</asp:Content>

