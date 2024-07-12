<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMasterPage.master" AutoEventWireup="true" CodeFile="Userchangepwdaspx.aspx.cs" Inherits="USER_Userchangepwdaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class ="row">
    <div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-danger">
                        <div class="panel-heading">
                           CHANGE PASSWORD
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                        <div class="form-group">
                                            <label>Enter Old Password</label>
                                            <asp:TextBox ID="TxtboxOldPassword" runat="server" class="form-control" 
                                                TextMode="Password"></asp:TextBox>
                                            <p class="help-block">
                                                <asp:RequiredFieldValidator ID="RFVOldPassword" runat="server" 
                                                    ControlToValidate="TxtboxOldPassword" Display="Dynamic" 
                                                    ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">Enter Old Password</asp:RequiredFieldValidator>
                                            &nbsp; </p>
                                        </div>
                                 <div class="form-group">
                                            <label>Enter New Password</label>
                                            <br />
                                            <asp:TextBox ID="TxtBoxNewPassword" runat="server" class="form-control" 
                                                TextMode="Password"></asp:TextBox>
<p class="help-block">
    <asp:RequiredFieldValidator ID="RFVNewPassword" runat="server" 
        ErrorMessage="RequiredFieldValidator" ForeColor="Red" 
        SetFocusOnError="True" ControlToValidate="TxtBoxNewPassword">Enter New Password</asp:RequiredFieldValidator>
                                           &nbsp;  </p>
                                        </div>
                                            <div class="form-group">
                                            <label>Confirm Password</label>
                                                <br />
                                                <asp:TextBox ID="TxtBoxConfirmPassword" runat="server" class="form-control" 
                                                    TextMode="Password"></asp:TextBox>
                                               <p class="help-block"> <asp:CompareValidator ID="CVConfirmPassword" runat="server" 
                                                    ControlToCompare="TxtBoxNewPassword" ControlToValidate="TxtBoxConfirmPassword" 
                                                    Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="Red">Enter Confirm Password</asp:CompareValidator>
                                                <asp:RequiredFieldValidator ID="RFVConfirmPassword" runat="server" 
                                                    Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" 
                                                    SetFocusOnError="True" ControlToValidate="TxtBoxConfirmPassword">ReEnter New Password</asp:RequiredFieldValidator>&nbsp;</p>
                                                
</div>
                                  
                                 
                                        &nbsp;<asp:Button ID="btnconfirm" runat="server" Height="30px" 
                                onclick="BtnSubmit_Click" Text="Confirm" Width="125px" />
&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="BtnCancle" runat="server" Height="30px" Text="Cancle" 
                                Width="125px" onclick="BtnCancle_Click" />
                            <br />
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                            </div>
                             </div>
</asp:Content>

