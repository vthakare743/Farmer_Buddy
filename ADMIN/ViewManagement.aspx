<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewManagement.aspx.cs" Inherits="ADMIN_ViewManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          View crop
                        </div>
            <div class="panel-body">
                <form role="form">

                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        <ItemTemplate>

                    <div class="column">
                <div class="card col-md-4">

                    <img  src="../images/<%# Eval("photo") %>" alt="" height="100px" />

                    <br />
                <asp:Label ID="lblname" runat="server" Font-Size="Large" Text='<%# Eval("pname") %>'></asp:Label>
                <br />
                <asp:Label ID="lblmrp" runat="server" Text='<%# Eval("mrp_amount") %>'></asp:Label>
                <br />
                    <asp:Label ID="lblsell" runat="server" Text='<%# Eval("sell_amount") %>'></asp:Label>
              <br />

                    <asp:HyperLink ID="view1" Text="View" CssClass="mdi mdi-border-color" runat="server"
                     navigateUrl='<%#"~/ADMIN/ViewCrop.aspx?pid="+ Server.UrlEncode(Eval("pid").ToString()) %>' />

                   </div>
                        </div> 
  
                            </ItemTemplate>
                        </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [ProductData]"></asp:SqlDataSource>

                    <br />
                    

                </form>
               
         </div>
             <center>
                 <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/Home.aspx">Back</asp:HyperLink>
                    </center>
    </div>
            </div>
</asp:Content>

