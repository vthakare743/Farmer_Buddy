<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Tips.aspx.cs" Inherits="ADMIN_Tips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                Add Tips
            </div>
            <div class="panel-body">
                <form role="form">
                <div class="form-group">
                    <asp:TextBox ID="txtTips" runat="server" TextMode="MultiLine" Height="100px" 
                        Width="300px"></asp:TextBox>
                </div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" 
                      />
                <br />
                <br />
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#339933"></asp:Label>
&nbsp;<asp:Image ID="Image1" runat="server" Height="26px" ImageUrl="~/web_img/success.png" 
                    Visible="False" Width="36px" />
                <br />
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="panel panel-danger">
            <div class="panel-heading">
                Tips Records&nbsp;&nbsp;&nbsp;
            </div>
            <div class="panel-body">
                <form role="form">
                <asp:GridView ID="GridView1" runat="server" 
                                BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" 
                                CellPadding="3" Height="16px" Width="90%" BorderStyle="None" 
                                CellSpacing="2" HorizontalAlign="Center" 
                                
                    AutoGenerateColumns="False" DataKeyNames="id" 
                    DataSourceID="SqlDataGetTips">
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                            ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="Tips No." InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="tips" HeaderText="Tips" SortExpression="tips" />
                    </Columns>
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
                <asp:SqlDataSource ID="SqlDataGetTips" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" 
                    DeleteCommand="DELETE FROM [TipsData] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [TipsData] ([tips]) VALUES (@tips)" 
                    SelectCommand="SELECT * FROM [TipsData]" 
                    UpdateCommand="UPDATE [TipsData] SET [tips] = @tips WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="tips" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="tips" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

