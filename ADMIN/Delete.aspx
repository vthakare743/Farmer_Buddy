<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="ADMIN_DeleteVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                Delete Video
            </div>
            <div class="panel-body">
                <form role="form">


                  <center>  <asp:Label ID="lbldelete" Font-Size="X-Large" runat="server" Text=" Deleted. " ></asp:Label>
                    <br />
                      <br />
                    <asp:Label ID="lblthanku" Font-Size="Large" runat="server" Text="Thank You !" ></asp:Label>
                      <br />
                      <br />
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ADMIN/Home.aspx">Back</asp:HyperLink>
                  </center>



                     </form>
            </div>
            </div>
        </div>
</asp:Content>

