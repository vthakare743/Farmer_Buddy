<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Expertadvice.aspx.cs" Inherits="ADMIN_Expertadvice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-0 col-sm-12 col-xs-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           Question List
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                        <div class="form-group">

                                           
                                           
                                            
                                            <p class="help-block">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                    CellPadding="4" DataKeyNames="eid" DataSourceID="SqlDataSource1" 
                                                    ForeColor="#333333" GridLines="None" 
                                                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <Columns>
                                                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                                        <asp:BoundField DataField="eid" HeaderText="Sr.No." ReadOnly="True" 
                                                            SortExpression="eid" />
                                                        <asp:BoundField DataField="question" HeaderText="Question" SortExpression="question" />
                                                        <asp:BoundField DataField="username" HeaderText="UserName" 
                                                            SortExpression="username" />
                                                        <asp:BoundField DataField="answer" HeaderText="Answer" SortExpression="answer" />
                                                        <asp:BoundField DataField="status" HeaderText="Status" 
                                                            SortExpression="status" />
                                                    </Columns>
                                                    <EditRowStyle BackColor="#999999" />
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                </asp:GridView>
                                                
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" SelectCommand="SELECT * FROM [ExpertAdvice]"></asp:SqlDataSource>
                                                
                                               <br /> </p>
                                        </div>
                                        <div class="form-group">
                                           
                                            <br />
                                            <center>
                                            <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/Home.aspx">Back</asp:HyperLink>
                                                </center>
                                        </div>
                                        
                                <br />
                                            
                                 
                                        <br />
                                        <br />

                                    </form>
                            </div>
                        </div>
                            </div>
</asp:Content>

