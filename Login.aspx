<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h2 >Login</h2>

		
                   <div id="fields">
	<div id="ajax-contact-form" class="form-horizontal" >
		<div class="row">
			<div class="span5">
				
               
               
                   <div class="control-group"> 
              <asp:DropDownList ID="ddlUserType" runat="server" class="span5">
                                    <asp:ListItem>Security User Type</asp:ListItem>
                                     <asp:ListItem>Farmer</asp:ListItem>
                                     <asp:ListItem>Trader</asp:ListItem>
                               </asp:DropDownList>
                               </div>	


               

                <div class="control-group">
				    <label class="control-label" for="inputUsername">Your Username:</label>
                   
				        <div class="controls">				      
				     
                        <asp:TextBox ID="txtusername" runat="server"  class="span5" placeholder="Your Username:"></asp:TextBox>
                        
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtusername" Display="Dynamic" 
                                     ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                                    SetFocusOnError="True">Enter Username here!!</asp:RequiredFieldValidator>
							    <asp:Label ID="lblmsg1" runat="server" ForeColor="Black"></asp:Label>
				    </div>
				</div>

                
				<div class="control-group">
				    <label class="control-label" for="inputPassword">Password:</label>
				    <div class="controls">				      
				   
                        <asp:TextBox ID="txtpwd" runat="server" class="span5" 
                            placeholder="your Password:" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtpwd" Display="Dynamic" 
                                    ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                                    SetFocusOnError="True">Enter your Password!!</asp:RequiredFieldValidator>
							</div>
				    </div>
            
                      


				  
                   <div> 
             

                </div>
			</div>
		</div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       

        <asp:Button ID="btnLogin" runat="server" BackColor="Green" ForeColor="Black" 
            onclick="btnLogin_Click" Text="LogIn" Width="132px" />
&nbsp;&nbsp;
        <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue" NavigateUrl="~/ForgetPwd.aspx">Forgot Password</asp:HyperLink>
        <br />

        <asp:Label ID="lblmsg" runat="server" ForeColor="Green" Font-Size="Large"></asp:Label>
	</div>

</asp:Content>

