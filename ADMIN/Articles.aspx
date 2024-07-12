<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Articles.aspx.cs" Inherits="ADMIN_Articles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-lg-6">
   <div class="card">
    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                Articles
            </div>
            <div class="panel-body">
                <form role="form">

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Articles</b></label>
                <asp:TextBox ID="txtarticles" runat="server" class="form-control"></asp:TextBox>
                <br />
                </div>

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Authors</b></label>
                <asp:TextBox ID="txtauthors" runat="server" class="form-control"></asp:TextBox>
        <br />
                </div>

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Description</b></label>
                <asp:TextBox ID="txtdesc" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
        <br />
                </div>

                    <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/ViewArticles.aspx">Back</asp:HyperLink>
                    <asp:Button ID="btnupdatee" runat="server" class="btn btn-success" Text="Update" ForeColor="Black"  Width="80px" OnClick="btnupdatee_Click" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                    </form>
                </div>
                        </div>

            </div>
        </div>
    </div>

    <div class="col-lg-6">
   <div class="card">
                    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                Articles
            </div>
            <div class="panel-body">

                <div class="control-group">
				    <label class="control-label" for="inputUploadPhoto">Photo:</label>

                    <asp:Image ID="Image1" runat="server" height="100" Width="200" />
                        <br />
                        <br />

				    <div class="controls">				      
				       <asp:FileUpload ID="FileUpload1" runat="server" class="span5 photo-up"/>
                        <br />
				    </div>
				</div>

                    <asp:Button ID="btnPhotoUpdate" runat="server" class="btn btn-success" Text="Update" Forecolor="Black" Width="80px" OnClick="btnPhotoUpdate_Click" />
                    <br />

                     <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </div>
                        </div>
            </div>
        </div>
    </div>
</asp:Content>

