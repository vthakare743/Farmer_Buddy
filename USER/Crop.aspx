<%@ Page Title="" Language="C#" MasterPageFile="~/USER/LoginMasterPage.master" AutoEventWireup="true" CodeFile="Crop.aspx.cs" Inherits="USER_Crop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />

     <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
             Crop Management
                        </div>
            <div class="panel-body">
                <from role="from1">

                    <div class="col-md-3">
                        <div class="form-group">
                            <div class="row-gx-5">
                                <asp:Label ID="Label1" runat="server" Text="Select Type" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                <asp:DropDownList ID="ddlSelect" runat="server" class="form-control" AutoPostBack="True" >
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Product Name</asp:ListItem>
                                   
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

                    <asp:Panel ID="Panel1" runat="server" Width="1000px" ScrollBars="Vertical" >

                 <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                      <ItemTemplate>


                    <div class="column">
                <div class="card col-md-4">


                     <div id="first">
                         <br />
                         
              <img src='photo/<%# Eval("photo") %>' height="85px" width="85px" style="border-radius:50%" BorderStyle="Double"/>
                         <br />
                         
                          <%#Eval ("pname") %> </td>
                         <br />
                         <br />

                         <asp:HyperLink ID="HyperLink1" CssClass="mdi mdi-border-color" runat="server" 
                             NavigateUrl='<%#"~/USER/ViewCrop.aspx?pid=" + Server.UrlEncode(Eval("pid").ToString()) %>' >View</asp:HyperLink>

              </div>
                    <br />
          

                    
                   </div>
                        </div> 
  
                            </ItemTemplate>


                      </asp:Repeater>
           
                        </asp:Panel>

                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [ProductData]"></asp:SqlDataSource>
           
                    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT [id], [first_name], [last_name], [mobile_no], [address], [e_mail] FROM [Registration]"></asp:SqlDataSource>--%>
           
                    </from>
                 </div>
                </div>
        </div>
</asp:Content>







           <%-- <HeaderTemplate >
                <table class="table table-hover table table-bordered ">
                    <tr class="p-3 mb-2 bg-primary ">
                      
                        <td>
                             
                            ID
                        </td>
                        <td>
                           Product Name
                        </td>
                 
                        <td>
                          Description
                        </td>
                        
                        <td>
                            MRP
                        </td>
                        <td>
                            Sell Price
                        </td>
                        <td>
                           Photo
                        </td>
                       
                    </tr>

            </HeaderTemplate>
                <ItemTemplate>
                     <tr >
                         <td>
                              <%#Eval("pid") %>
                        
                    </td>
                      <td>
                       <%#Eval ("pname") %> </td>
                     <td>
                         <%#Eval("pdescription") %> </td>
                    <td>
                        <%#Eval("mrp_amount") %> </td>
                          <td>
                              <%#Eval("sell_amount") %> </td>
                    <td>
                        <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />
                          </tr>
            </ItemTemplate>
            <FooterTemplate>
                  </table>
                           </FooterTemplate>--%>
                    
