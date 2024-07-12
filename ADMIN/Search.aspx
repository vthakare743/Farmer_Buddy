<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="ADMIN_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                Search
            </div>
            <div class="panel-body">
                <form role="form">

                    <div class="col-md-3">
                        <div class="form-group">
                            <div class="row-gx-5">
                                <asp:Label ID="Label1" runat="server" Text="Select Type" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                <asp:DropDownList ID="ddlSelect" runat="server" class="form-control" AutoPostBack="True" >
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>User</asp:ListItem>
                                    <asp:ListItem>Schemes</asp:ListItem>
                                    <asp:ListItem>Videos</asp:ListItem>
                                    <asp:ListItem>Crop</asp:ListItem>
                                    <asp:ListItem>Articles</asp:ListItem>
                                    <asp:ListItem>Insurance</asp:ListItem>
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
                  
         <asp:Panel ID="Panel1" runat="server" Width="95%" Height="400px" ScrollBars="Auto" style="margin-right:0px">

                    <asp:GridView ID="GridView1" class="table table-hover" runat="server"  AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" Visible="False" >
                       <Columns>
                           <asp:BoundField DataField="aid" HeaderText="Sr.No." SortExpression="aid" />
                           <asp:BoundField DataField="article_title" HeaderText="Articles" SortExpression="article_title" />
                            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                           
                            <asp:BoundField DataField="authors" HeaderText="Authors" SortExpression="authors" />
                            
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>

                                    <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />

                                </ItemTemplate>

                                
</asp:TemplateField>

                            </Columns>
         <FooterStyle BackColor="#CCCCCC" />
                       <HeaderStyle BackColor="#00cc66" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                       <RowStyle BackColor="White" />
                       <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#808080" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#383838" />
                   </asp:GridView>
                         

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand=" "></asp:SqlDataSource>
                        </asp:Panel>



                     <asp:Panel ID="Panel2" runat="server" Width="95%" Height="400px" ScrollBars="Auto" style="margin-right:0px">

                    <asp:GridView ID="GridView2" class="table table-hover" runat="server"  AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" Width="100%" Visible="False">
                       <Columns>
                           <asp:BoundField DataField="id" HeaderText="Sr.No." SortExpression="id" />
                           <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                           
                            <asp:BoundField DataField="mobile_no" HeaderText="Mobile No." SortExpression="mobile_no" />
                            
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>

                                    <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />

                                </ItemTemplate>

                                
</asp:TemplateField>

                            </Columns>
         <FooterStyle BackColor="#CCCCCC" />
                       <HeaderStyle BackColor="#00cc66" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                       <RowStyle BackColor="White" />
                       <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#808080" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#383838" />
                   </asp:GridView>
                         

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand=" "></asp:SqlDataSource>
                        </asp:Panel>

                    <asp:Label ID="lblshow" runat="server" Text=""></asp:Label>

                     <asp:Panel ID="Panel3" runat="server" Width="95%" Height="400px" ScrollBars="Auto" style="margin-right:0px">

                    <asp:GridView ID="GridView3" class="table table-hover" runat="server"  AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource3" ForeColor="Black" Width="100%" Visible="False">
                       <Columns>
                           <asp:BoundField DataField="gid" HeaderText="Sr.No." SortExpression="gid" />
                           <asp:BoundField DataField="schemeName" HeaderText="Scheme" SortExpression="schemeName" />
                            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                           
                            <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                            
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>

                                    <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />

                                </ItemTemplate>

                                
</asp:TemplateField>

                            </Columns>
         <FooterStyle BackColor="#CCCCCC" />
                       <HeaderStyle BackColor="#00cc66" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                       <RowStyle BackColor="White" />
                       <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#808080" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#383838" />
                   </asp:GridView>
                         

<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand=" "></asp:SqlDataSource>
                        </asp:Panel>



                     <asp:Panel ID="Panel4" runat="server" Width="95%" Height="400px" ScrollBars="Auto" style="margin-right:0px">

                    <asp:GridView ID="GridView4" class="table table-hover" runat="server"  AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource4" ForeColor="Black" Width="100%" Visible="False">
                       <Columns>
                           <asp:BoundField DataField="vid" HeaderText="Sr.No." SortExpression="vid" />
                           <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                            <asp:BoundField DataField="link" HeaderText="Link" SortExpression="link" />
                           
                            <asp:BoundField DataField="Udate" HeaderText="Date" SortExpression="Udate" />
                             <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                           <%-- <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>

                                    <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />

                                </ItemTemplate>

                                
</asp:TemplateField>--%>

                            </Columns>
         <FooterStyle BackColor="#CCCCCC" />
                       <HeaderStyle BackColor="#00cc66" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                       <RowStyle BackColor="White" />
                       <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#808080" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#383838" />
                   </asp:GridView>
                         

<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand=" "></asp:SqlDataSource>
                        </asp:Panel>



                     <asp:Panel ID="Panel5" runat="server" Width="95%" Height="400px" ScrollBars="Auto" style="margin-right:0px">

                    <asp:GridView ID="GridView5" class="table table-hover" runat="server"  AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource5" ForeColor="Black" Width="100%" Visible="False">
                       <Columns>
                           <asp:BoundField DataField="pid" HeaderText="Sr.No." SortExpression="pid" />
                           <asp:BoundField DataField="pname" HeaderText="Product Name" SortExpression="pname" />
                            <asp:BoundField DataField="pdescription" HeaderText="Description" SortExpression="pdescription" />
                           
                            <asp:BoundField DataField="mrp_amount" HeaderText="MRP Amount" SortExpression="mrp_amount" />
                           <asp:BoundField DataField="sell_amount" HeaderText="sell Amount" SortExpression="sell_amount" />
                            
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>

                                    <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />

                                </ItemTemplate>

                                
</asp:TemplateField>

                            </Columns>
         <FooterStyle BackColor="#CCCCCC" />
                       <HeaderStyle BackColor="#00cc66" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                       <RowStyle BackColor="White" />
                       <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#808080" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#383838" />
                   </asp:GridView>
                         

<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand=" "></asp:SqlDataSource>
                        </asp:Panel>




                     <asp:Panel ID="Panel6" runat="server" Width="95%" Height="400px" ScrollBars="Auto" style="margin-right:0px">

                    <asp:GridView ID="GridView6" class="table table-hover" runat="server"  AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource6" ForeColor="Black" Width="100%" Visible="False">
                       <Columns>
                           <asp:BoundField DataField="cid" HeaderText="Sr.No." SortExpression="cid" />
                           <asp:BoundField DataField="companyName" HeaderText="Company" SortExpression="companyName" />
                            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                           
                            <asp:BoundField DataField="InsuranceName" HeaderText="Insurance" SortExpression="InsuranceName" />
                            
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>

                                    <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />

                                </ItemTemplate>

                                
</asp:TemplateField>

                            </Columns>
         <FooterStyle BackColor="#CCCCCC" />
                       <HeaderStyle BackColor="#00cc66" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                       <RowStyle BackColor="White" />
                       <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#808080" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#383838" />
                   </asp:GridView>
                         

<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand=" "></asp:SqlDataSource>
                        </asp:Panel>

                    <center>
                         <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/Home.aspx">Back</asp:HyperLink>
                    </center>
                   <%-- <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        <HeaderTemplate>
                            <table class="table table-hover">

                                <tr class="p-3 mb-2 bg-primary text-black">

                                    <td>Sr.No.
                                    </td>

                                    <td>Articles
                                    </td>

                                    <td>Description
                                    </td>

                                    <td>Authors
                                    </td>

                                    <td>Photo
                                    </td>
                                </tr>
                           
                        </HeaderTemplate>

                        <ItemTemplate>
                            <tr class="table-bordered">

                                 <td>
                        <%#Eval("aid") %>
                    </td>
                     <td>
                        <%#Eval("article_title") %>
                    </td>
                     <td>
                        <%#Eval("description") %>
                    </td>
                     <td>
                        <%#Eval("authors") %>
                         </td>
                          <td>
                               <img src='photo/<%# Eval("photo") %>' alt="" height="70" />
                        <%--<%#Eval("photo") %>--%>
                  <%--  </td>
                   
                            </tr>
                        </ItemTemplate>
                         <FooterTemplate>
                 </table>
                           </FooterTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand=""></asp:SqlDataSource>--%>

                     </form>
            </div>
            </div>
        </div>
</asp:Content>

