<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPwd.aspx.cs" Inherits="ForgetPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2">
                <div class="content_title new-title"><h2>Forgot Password</h2></div>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Enter Your Username" 
                    Font-Bold="True" ForeColor="#00CC00"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmpid" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td> &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnOtp" runat="server" onclick="btnOtp_Click" Text="Send OTP" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Enter OTP" 
                    Font-Bold="True" ForeColor="#00CC00"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtOtp" runat="server" Width="300px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnpwd" runat="server" onclick="btnpwd_Click" 
                    Text="Get Password" class="hvr-wobble-vertical btn-style" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
               
            </td>
        </tr>
    </table>
</asp:Content>

