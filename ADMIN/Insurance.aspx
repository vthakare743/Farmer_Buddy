<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Insurance.aspx.cs" Inherits="ADMIN_Insurance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                         Show Insurance
                        </div>
            <div class="panel-body">
                <form role="form">

     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        <ItemTemplate>
                           
                     <div class="card-body">
                                   <div class="row">

                                       <div class="card">
                                           <div class="col-lg-4">
                                        
                    <asp:Label ID="lblname" runat="server" Font-Size="Large" Text='<%# Eval("companyName") %>'></asp:Label>
                <br />
                                               <br />
                     <img  src="../images/<%# Eval("photo") %>" alt="" height="400px" width="300px" style="border-style: double; border-width: thin; border-color: #000000"/>
                    <br />
                                               <br />
                                               <asp:Label ID="Label3" runat="server" Text="Insurance Name:-" ForeColor="#00ccff"></asp:Label>
                    <asp:Label ID="lblmrp" runat="server" Text='<%# Eval("InsuranceName") %>'></asp:Label>
                <br />
                                               <asp:Label ID="Label4" runat="server" Text="Click Here:-" ForeColor="#00ccff"></asp:Label>
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


                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [CroplnsuranceData]"></asp:SqlDataSource>
                    <br />
                 <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/ViewInsurance.aspx" >Back</asp:HyperLink>
                    <asp:Button ID="btnedit" runat="server" class="btn btn-success" Text="Edit" ForeColor="Black" Width="80px" OnClick="btnedit_Click" />

                    <asp:Button ID="Button2" runat="server" class="btn btn-danger" Text="Delete" ForeColor="Black" Width="80px" OnClick="Button2_Click"/>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
 </form>
            </div>
        </div>
    </div>
</asp:Content>

