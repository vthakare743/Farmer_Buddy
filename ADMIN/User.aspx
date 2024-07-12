<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="ADMIN_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          User
                        </div>
            <div class="panel-body">
                <form role="form">

                    <asp:Panel ID="Panel1" runat="server" Width="95%" Height="400px" ScrollBars="Auto" style="margin-right:0px">

    <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" >
                       <Columns>
                           <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                           <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                            <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                           
                            <%--<asp:BoundField DataField="e_mail" HeaderText="e_mail" SortExpression="e_mail" />--%>
                            
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>

                                    <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />

                                </ItemTemplate>

                                
</asp:TemplateField>

                            <asp:TemplateField HeaderText="View">
                    <ItemTemplate>

                           <asp:HyperLink ID="view1" Text="View" Class="btn btn-success" runat="server" Width="80px"
                     navigateUrl='<%#"~/ADMIN/ShowUser.aspx?id="+ Server.UrlEncode(Eval("id").ToString()) %>' />

                        <%--<asp:Button ID="Button2" runat="server" Text="Activate"  CommandArgument='<%# (Server.UrlEncode(Eval("id").ToString()))%>' OnClick="Button2_Click" />--%>
                        <br />
<br />                            

                           <asp:HyperLink ID="active" Text="Activate" Class="btn btn-danger" runat="server" Width="80px"
                     navigateUrl='<%#"~/ADMIN/User4.aspx?id="+ Server.UrlEncode(Eval("id").ToString()) %>' />

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


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
                         </asp:Panel>

                    <center>
                        <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/Home.aspx">Back</asp:HyperLink>
                    </center>
                    </form>
            </div>
        </div>


   <%--

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" >
                       <Columns>
                          

                           <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                           <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                            <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                           <asp:BoundField DataField="e_mail" HeaderText="e_mail" SortExpression="e_mail" />
                            <%--<asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />--%>
                            
                           <%--asp:TemplateField HeaderText="photo">
                                <ItemTemplate>

                                    <img src='photo/<%# Eval("photo") %>' height="85px" width="70px" />

                                </ItemTemplate>
</asp:TemplateField>

                           <asp:TemplateField HeaderText="View">
                    <ItemTemplate>

                        <asp:HyperLink ID="view1" Text="View" CssClass="mdi mdi-border-color" runat="server"
                     navigateUrl='<%#"~/ADMIN/ShowUser.aspx?id="+ Server.UrlEncode(Eval("id").ToString()) %>' />

                        
                    </ItemTemplate>
                </asp:TemplateField>

                            </Columns>

                       <FooterStyle BackCol--%><%--or="#CCCCCC" />
                       <HeaderStyle BackColor="#00cc66" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                       <RowStyle BackColor="White" />
                       <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#808080" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#383838" />
                   </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>

    <%--<asp:Label ID="Label1" runat="server" Text=""></asp:Label>--%>

                    <%--</form>--%>
            <%--</div>
        </div>
    </div>--%>

    </asp:Content>


