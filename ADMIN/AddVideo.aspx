<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddVideo.aspx.cs" Inherits="ADMIN_AddVideo" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          Add Video
                        </div>
            <div class="panel-body">
                <form role="form">

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Title</b></label>
                <asp:TextBox ID="txtTitle" runat="server" class="form-control"></asp:TextBox>
                <br />
                </div>

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Url Code</b></label>
                <asp:TextBox ID="txtUrl" runat="server" class="form-control"></asp:TextBox>
                <br />
                </div>

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Date</b></label>
                <asp:TextBox ID="txtdte" runat="server" class="form-control" TextMode="DateTime"></asp:TextBox>
                <br />
                </div>

                     <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Description</b></label>
                <asp:TextBox ID="txtdesc" runat="server" class="form-control"></asp:TextBox>
                <br />
                </div>

               <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/Home.aspx">Back</asp:HyperLink>
                     <asp:Button ID="btnSubmit" runat="server" class="btn btn-success"  ForeColor="Black" Text="Submit" Width="80px" OnClick="btnSubmit_Click" />

                    </br>

            <asp:HiddenField ID="hfId" runat="server" />
       <br />
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#339933"></asp:Label>
      
                      </form>
            </div>
        </div>
    </div>
</asp:Content>












          <%--  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
                DataSourceID="SqlDataGetVideoList" ForeColor="#333333" GridLines="None" 
                Width="400px" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    <asp:BoundField DataField="id" HeaderText="Sr.No" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="title" HeaderText="Video Title" 
                        SortExpression="title" />
                    <asp:BoundField DataField="url" HeaderText="url" SortExpression="url" 
                        Visible="False" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataGetVideoList" runat="server" 
                ConnectionString="<%$ ConnectionStrings:FarmerBuddyConnectionString %>" 
                DeleteCommand="DELETE FROM [Video] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [Video] ([id], [title], [url]) VALUES (@id, @title, @url)" 
                SelectCommand="" 
                UpdateCommand="UPDATE [Video] SET [title] = @title, [url] = @url WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="url" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="url" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>--%>
       
                  
