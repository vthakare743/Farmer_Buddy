<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMasterPage.master" AutoEventWireup="true" CodeFile="ShowVideo.aspx.cs" Inherits="USER_ShowVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="world-news">
							<div class="main-title-head">
								<h3>Videos</h3>
								<!--<a href="singlepage.html">More  +</a>-->
								<div class="clearfix"></div>
							</div>
							<div class="world-news-grids">
                            <div class="row">
                              <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataGetData">
                <ItemTemplate>
                
                <%#Eval("url") %>
								
                </ItemTemplate>
                </asp:Repeater>
									
                                </div>
								</div>
                                </div>
                                
                                   <asp:SqlDataSource ID="SqlDataGetData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" 
                    SelectCommand="SELECT * FROM [Video]">
                    
                    
                    
                    </asp:SqlDataSource>
                  
</asp:Content>

