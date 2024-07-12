<%@ Page Title="" Language="C#" MasterPageFile="~/USER/LoginMasterPage.master" AutoEventWireup="true" CodeFile="ViewInsuranceaspx.aspx.cs" Inherits="USER_ViewInsuranceaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                View Crop
            </div>
            <div class="panel-body">
                <form role="form">

                     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        <ItemTemplate>
                            
                            <div class="card-body">
                                   <div class="row">

                                       <div class="card">
                                           <div class="col-lg-4">
                                        

                                                <asp:Label ID="Label2" runat="server" Text="Insurance Name:-"  ForeColor="#00ccff"></asp:Label>
                                                            <asp:Label ID="lblname" runat="server" Font-Size="Large" Text='<%# Eval("InsuranceName") %>'></asp:Label>
                                                            <br />
                                               <br />
                                                            
                                               <img src='photo/<%# Eval("photo") %>' height="300px" width="300px" style BorderStyle="Double"/>
                                                            <br />
                                               <br />
                                                            <asp:Label ID="Label3" runat="server" Text="Company Name:-"  ForeColor="#00ccff"></asp:Label>
                                                            <asp:Label ID="lblmrp" runat="server" Text='<%# Eval("companyName") %>'></asp:Label>
                                                            <br />
                                               
                                                            <asp:Label ID="Label4" runat="server" Text="Website:-"  ForeColor="#00ccff"></asp:Label>
                                                            <asp:Label ID="lblsell" runat="server" Text='<%# Eval("website") %>'></asp:Label>
                                                            <br />
                     </div>
                                                    </div>
                                     
                                                    <div class="col-md-8">
                                    <div class="card-header">
                                        <asp:Label ID="Label5" runat="server" Text="Description:-" ForeColor="#00ccff"></asp:Label>
                                        <br />
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                                    </div>
                                                </div> 
                                            </div>
                                        </div>
                                        
                                
                        </ItemTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand=""></asp:SqlDataSource>
                    <br />

                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/USER/Insurance.aspx">HyperLink</asp:HyperLink>







                       </form>
            </div>
        </div>
    </div>

</asp:Content>

