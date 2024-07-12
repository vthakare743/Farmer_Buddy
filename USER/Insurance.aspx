<%@ Page Title="" Language="C#" MasterPageFile="~/USER/LoginMasterPage.master" AutoEventWireup="true" CodeFile="Insurance.aspx.cs" Inherits="USER_Insurance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    
     <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          Insurance
                        </div>
            <div class="panel-body">
                <from role="from1">

                     <div class="col-md-3">
                        <div class="form-group">
                            <div class="row-gx-5">
                                <asp:Label ID="Label1" runat="server" Text="Select Type" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                <asp:DropDownList ID="ddlSelect" runat="server" class="form-control" AutoPostBack="True" >
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Company Name</asp:ListItem>
                                    <asp:ListItem>Insurance Name</asp:ListItem>
                                   
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

                    <asp:Panel ID="Panel1" runat="server"  Width="1000px" ScrollBars="Vertical">

                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                        <ItemTemplate>


                    <div class="column">
                <div class="card col-md-4">


                     <div id="first">
                         <br />
                         
              <img src='photo/<%# Eval("photo") %>' height="85px" width="85px" style="border-radius:50%" BorderStyle="Double"/>
                         <br />
                         
                          <%#Eval ("InsuranceName") %> </td>
                         <br />
                         <br />

                         <asp:HyperLink ID="HyperLink1" CssClass="mdi mdi-border-color" runat="server"
                              NavigateUrl='<%#"~/USER/ViewInsuranceaspx.aspx?cid=" + Server.UrlEncode(Eval("cid").ToString()) %>' > View</asp:HyperLink>

              </div>
                    <br />
          

                    
                   </div>
                        </div> 
  
                            </ItemTemplate>


          
                    </asp:Repeater>
                        </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [CroplnsuranceData]"></asp:SqlDataSource>
 </from>
                 </div>
        </div>
    </div>
</asp:Content>



 <%-- <HeaderTemplate >
                            <table class="table table-hover table table-bordered ">
                                <tr  class="p-3 mb-2 bg-primary">
                                    <td>
                                        Sr.No.
                                    </td>

                                    <td>
                                        Company Name
                                    </td>

                                    <td>
                                        Insurance Name
                                    </td>

                                    <td>
                                        Description
                                    </td>

                                    <td>
                                        Website
                                    </td>

                                    <td>

                                        Photo
                                    </td>
                                </tr>

                             </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                             <%#Eval("cid") %>
                        </td>

                        <td>
                           <%#Eval("companyName") %> 
                        </td>

                        <td>
                           <%#Eval("InsuranceName") %> 
                        </td>

                        <td>
                             <%#Eval("description") %>
                        </td>

                        <td>
                            <%#Eval("website") %> 
                        </td>

                        <td>
                           <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />
                        </td>
                    </tr>

                     </ItemTemplate>
            <FooterTemplate>
                  </table>
                           </FooterTemplate>--%>

