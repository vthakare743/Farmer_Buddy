<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Videos.aspx.cs" Inherits="ADMIN_Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <%-- <div class="col-lg-6">
   <div class="card">--%>
    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                Videos
            </div>
            <div class="panel-body">
                <form role="form">

                     <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b> Title</b></label>
                <asp:TextBox ID="txtTitle" runat="server" class="form-control"></asp:TextBox>
                <br />
                </div>

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b> Link</b></label>
                <asp:TextBox ID="txtLink" runat="server" class="form-control"></asp:TextBox>
                <br />
                </div>

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b> Date</b></label>
                <asp:TextBox ID="txtDate" runat="server" class="form-control"></asp:TextBox>
                <br />
                </div>
                    
                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Description</b></label>
                <asp:TextBox ID="txtdesc" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
        <br />
                </div>

                    <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/ViewVideo.aspx" >Back</asp:HyperLink>
                    <asp:Button ID="btnupdatee" runat="server" class="btn btn-success" ForeColor="Black" Text="Update" Width="80px" OnClick="btnupdatee_Click" />
                    <br />

                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                    </form>
                </div>
                        </div>

            </div>
     
</asp:Content>

