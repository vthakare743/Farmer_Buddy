<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddArticles.aspx.cs" Inherits="ADMIN_AddArticles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          Add Articles
                        </div>
            <div class="panel-body">
                <form role="form">

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Title</b></label>
                <asp:TextBox ID="txtTitle" runat="server" class="form-control"></asp:TextBox>
                <br />
                </div>

                     <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Description</b></label>
                <asp:TextBox ID="txtDesc" runat="server" class="form-control"></asp:TextBox>
        <br />
                </div>
                    
                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Author</b></label>
                <asp:TextBox ID="txtAuthor" runat="server" class="form-control"></asp:TextBox>
        <br />
                </div>

                    <div class="control-group">
				    <label class="control-label" for="inputUploadPhoto">Photo:</label>
				    <div class="controls">				      
				       <asp:FileUpload ID="FileUpload1" runat="server" class="span5 photo-up"/>
                        <br />
				    </div>
				</div>

                    <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/Home.aspx">Back</asp:HyperLink>

                    <asp:Button ID="btnsub" runat="server" class="btn btn-success"  ForeColor="Black" Text="Submit" Width="80px" OnClick="btnsub_Click1" />

                    </br>

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                    </form>
            </div>
        </div>
    </div>
                    			      
				     
</asp:Content>

