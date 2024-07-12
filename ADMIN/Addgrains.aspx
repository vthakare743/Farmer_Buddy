<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Addgrains.aspx.cs" Inherits="ADMIN_Addgrains" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           ADD GRAIN
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                        <div class="form-group">

                                           
                                            
                                            <asp:TextBox ID="txtgrains" runat="server" class="form-control" 
                                                placeholder=" Enter Grains:"></asp:TextBox>
                                            
                                        </div>
                                        
                                
                                            
                                 
                            <asp:Button ID="btnUpload" runat="server" Text="Upload" onclick="btnUpload_Click"  />
                                        <br />
                                        <br />
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>

                                    </form>
                            </div>
                        </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-danger">
                        <div class="panel-heading">
                           Grains List
                        </div>
                        <div class="panel-body">
                            <form role="form">
                            <asp:GridView ID="GridView1" runat="server" 
                                BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" 
                                CellPadding="3" Height="16px" Width="320px" BorderStyle="None" 
                                CellSpacing="2" HorizontalAlign="Center" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged">
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <PagerStyle ForeColor="#8C4510" 
                                    HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                <SortedDescendingHeaderStyle BackColor="#93451F" />
                            </asp:GridView>
                                    </form>
                            </div>
                        </div>
                            </div>

</asp:Content>

