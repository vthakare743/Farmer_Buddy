<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="User4.aspx.cs" Inherits="ADMIN_User4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                User
            </div>
            <div class="panel-body">
                <form role="form">

                    <center>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    <br />
                        <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="red" Text=""></asp:Label>

                    </center>

                    </form>
            </div>
        </div>
    </div>
</asp:Content>

