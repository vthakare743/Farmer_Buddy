<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewInsurance.aspx.cs" Inherits="ADMIN_ViewInsurance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          View Insurance
                        </div>
            <div class="panel-body">
                <form role="form">

                     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        <ItemTemplate>

                    <div class="column">
                <div class="card col-md-4">

                   <img  src="../images/<%# Eval("photo") %>" alt="" height="100px" />

                    <br />
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text='<%# Eval("companyName") %>'></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("InsuranceName") %>'></asp:Label>
                <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("website") %>'></asp:Label>
              <br />

                   
                    <asp:HyperLink ID="view1" Text="View" CssClass="mdi mdi-border-color" runat="server"
                     navigateUrl='<%#"~/ADMIN/Insurance.aspx?cid="+ Server.UrlEncode(Eval("cid").ToString()) %>' />

                   </div>
                        </div> 
  
                            </ItemTemplate>
                        </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [CroplnsuranceData]"></asp:SqlDataSource>

                    </form>
            </div>

            <center>
               <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/Home.aspx">Back</asp:HyperLink>
            </center>

        </div>
    </div>
</asp:Content>

