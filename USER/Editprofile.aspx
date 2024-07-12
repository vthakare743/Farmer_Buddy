<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMasterPage.master" AutoEventWireup="true" CodeFile="Editprofile.aspx.cs" Inherits="USER_New" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
   
<div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           EDIT PROFILE
                        </div>
                       
                        <div class="panel-body">
                            <form role="form">
                            
                            
                                        <div class="form-group">
                                            
                                            <asp:TextBox ID="txtfname" runat="server" class="form-control" 
                                                placeholder=" First Name:"></asp:TextBox>
                                            <p class="help-block">
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                    ErrorMessage="RegularExpressionValidator" ControlToValidate="txtfname" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True" 
                                                    ValidationExpression="[a-zA-Z ]*$">Enter First Name</asp:RegularExpressionValidator><asp:RequiredFieldValidator
                                                        ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtfname" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter First Name</asp:RequiredFieldValidator>
                                                &nbsp;</p>
                                        </div>
                                         <div class="form-group">
                                            
                                            <asp:TextBox ID="txtlname" runat="server" class="form-control" 
                                                placeholder=" Last Name:"></asp:TextBox>
                                            <p class="help-block"><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                    ErrorMessage="RegularExpressionValidator" ControlToValidate="txtfname" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True" 
                                                    ValidationExpression="[a-zA-Z ]*$">Enter Last Name</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator
                                                        ID="RequiredFieldValidator3" runat="server" 
                                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtlname" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter Last Name</asp:RequiredFieldValidator>
                                                &nbsp;</p>
                                        </div>
                                        <div class="form-group">
                                            
                                            <asp:TextBox ID="txtaddress" runat="server" class="form-control" 
                                                placeholder=" Address:"></asp:TextBox>
                                            <p class="help-block">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtaddress" 
                                                    ForeColor="Red" SetFocusOnError="True">Enter Address</asp:RequiredFieldValidator>
                                                &nbsp;</p>
                                        </div>
                                 <div class="form-group">
                                            
                                     <asp:TextBox ID="txtemail" runat="server" class="form-control"  
                                         placeholder=" Email:"></asp:TextBox>
                                     <p class="help-block"> 
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                             ErrorMessage="RegularExpressionValidator" ControlToValidate="txtemail" 
                                             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                             Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter proper email id</asp:RegularExpressionValidator><asp:RequiredFieldValidator
                                                 ID="RequiredFieldValidator5" runat="server" 
                                             ErrorMessage="RequiredFieldValidator" ControlToValidate="txtemail" 
                                             Display="Dynamic" ForeColor="Red">Enter Email ID</asp:RequiredFieldValidator>&nbsp; </p>
                                        </div>
                                            <div class="form-group">
                                            
                                                <asp:TextBox ID="txtmobile" runat="server" class="form-control" placeholder=" Mobile:"></asp:TextBox>
                                                <p class="help-block"> 
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                                        ErrorMessage="RegularExpressionValidator" ControlToValidate="txtmobile" 
                                                        Display="Dynamic" ForeColor="Red" SetFocusOnError="True" 
                                                        ValidationExpression="\d{10}">Enter Mobile Number</asp:RegularExpressionValidator><asp:RequiredFieldValidator
                                                            ID="RequiredFieldValidator6" runat="server" 
                                                        ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmobile" 
                                                        Display="Dynamic" ForeColor="Red">Enter Mobile Number</asp:RequiredFieldValidator>
                                                    &nbsp;</p>

                                        </div>
                          
                                
                            <asp:Button ID="btnupdate" runat="server" Text="Update" onclick="btnupdate_Click" /><br />
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                            
                                    </form>
                            </div>
                            
                        </div>
                            </div>
                     </ContentTemplate>
                      </asp:UpdatePanel>     
</asp:Content>

