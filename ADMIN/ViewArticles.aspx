﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewArticles.aspx.cs" Inherits="ADMIN_ViewArticles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          View Articles
                        </div>
            <div class="panel-body">
                <form role="form">

                    <%--<link href="Scheme.css" rel="stylesheet" />--%>

               
                    <asp:Panel ID="Panel1" runat="server" Width="95%" Height="400px" ScrollBars="Auto" style="margin-right:0px">
                     
    <asp:GridView ID="GridView1" class="table table-hover" runat="server"  AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" >
                       <Columns>
                           <asp:BoundField DataField="aid" HeaderText="Sr.No." SortExpression="aid" />
                           <asp:BoundField DataField="article_title" HeaderText="Title" SortExpression="article_title" />
                            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                           
                            <asp:BoundField DataField="authors" HeaderText="Authors" SortExpression="authors" />
                            
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>

                                    <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />

                                </ItemTemplate>

                                
</asp:TemplateField>

                            <asp:TemplateField HeaderText="View">
                    <ItemTemplate>

                           <asp:HyperLink ID="view1" Text="View" Class="btn btn-success" runat="server" ForeColor="Black"
                     navigateUrl='<%#"~/ADMIN/ShowArticles.aspx?aid="+ Server.UrlEncode(Eval("aid").ToString()) %>' />

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
                         

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [ArticleData]"></asp:SqlDataSource>
                    </asp:Panel>
              
                    <center>
                     <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/Home.aspx">Back</asp:HyperLink>
                    </center>
                    </form>
            </div>
        </div>
   
         </div>
</asp:Content>

