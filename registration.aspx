<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

			
				<h2 >Registration</h2>

		
                  <div id="fields">
	<div id="ajax-contact-form" class="form-horizontal" >
		<div class="row">
			<div class="span5">
				<div class="control-group">
				    <label class="control-label" for="inputName">Your First name:</label>
				    <div class="controls">				      
				     
                        <asp:TextBox ID="txtname" runat="server" class="span5" placeholder="First name:"></asp:TextBox>
                      
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                       ControlToValidate="txtname" Display="Dynamic" 
                                        ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                         SetFocusOnError="True" ValidationExpression="[a-zA-Z ]*$">Enter First Name!!!</asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                         ControlToValidate="txtname" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                                         SetFocusOnError="True">Enter First Name!!</asp:RequiredFieldValidator>
				    </div>
				</div>

                <div class="control-group">
				    <label class="control-label" for="inputName">Your Last name:</label>
				    <div class="controls">				      
				     
                        <asp:TextBox ID="txtname1" runat="server" class="span5" 
                            placeholder="Last name:"></asp:TextBox>
                      
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                       ControlToValidate="txtname" Display="Dynamic" 
                                        ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                         SetFocusOnError="True" ValidationExpression="[a-zA-Z ]*$">Enter Last Name!!!</asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                         ControlToValidate="txtname" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                                         SetFocusOnError="True">Enter Last Name!!</asp:RequiredFieldValidator>
				    </div>
				</div>
                <div class="control-group">
				    <label class="control-label" for="inputAddress">Enter Proper Address:</label>
				    <div class="controls">				      
				     
                        <asp:TextBox ID="txtAddress" runat="server" class="span5" placeholder="Enter Proper Address:"></asp:TextBox>
                      
                                   
				    </div>
				</div>


				<div class="control-group">
				    <label class="control-label" for="inputEmail">Your email:</label>
				    <div class="controls">				      
				     
                        <asp:TextBox ID="txtemail" runat="server"  class="span5" placeholder="Your email:"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                      ControlToValidate="txtemail" Display="Dynamic" 
                                      ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                                      SetFocusOnError="True">Enter your EmailId!!!</asp:RequiredFieldValidator>
                                      &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                                      runat="server" ControlToValidate="txtemail" Display="Dynamic" 
                                      ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                      SetFocusOnError="True" 
                                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter Correct EmaiId</asp:RegularExpressionValidator>
				    </div>
				</div>


                <div class="control-group">
				    <label class="control-label" for="inputPhone">Your Phone:</label>
				    <div class="controls">				      
				     
                        <asp:TextBox ID="txtphone" runat="server"  class="span5" placeholder="Your Mobile No:"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                  ControlToValidate="txtphone" Display="Dynamic" 
                                   ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                                    SetFocusOnError="True">Enter your Mobile No!!!</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                      ControlToValidate="txtphone" Display="Dynamic" 
                                      ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                       SetFocusOnError="True" ValidationExpression="\d{10}">Enter Correct  Mobile No.</asp:RegularExpressionValidator>
				    </div>
				</div>


                <div class="control-group">
				    <label class="control-label" for="inputUsername">Your Username:</label>
                   
				        <div class="controls">				      
				     
                        <asp:TextBox ID="txtusername" runat="server"  class="span5" 
                                placeholder="Your Username:" ontextchanged="txtusername_TextChanged"></asp:TextBox>
                        
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
                            placeholder="Your Password:" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtpwd" Display="Dynamic" 
                                    ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                                    SetFocusOnError="True">Enter your Password!!</asp:RequiredFieldValidator>
							</div>
				    </div>
              <div> 
              <asp:DropDownList ID="ddlquestion" runat="server" class="span5">
                                    <asp:ListItem>Security Question</asp:ListItem>
                                     <asp:ListItem>NickName??</asp:ListItem>
                                     <asp:ListItem>Favourite Bird?</asp:ListItem>
                                     <asp:ListItem>Favourite Actor?</asp:ListItem>
                               </asp:DropDownList>
                               </div>		      
				   
                      


                               <div class="control-group">
				    <label class="control-label" for="inputAnswer">Your Answer:</label>
                   
				        <div class="controls">	
                    <asp:TextBox ID="txtAnswer" runat="server" class="span5"
                       placeholder="Your Answer:"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                   ControlToValidate="txtAnswer" Display="Dynamic" 
                                    ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" 
                                    SetFocusOnError="True">Enter your Answer!!</asp:RequiredFieldValidator>
                                    </div>
				</div>
				  
               <div> 
              <asp:DropDownList ID="ddlUserType" runat="server" class="span5">
                                    <asp:ListItem>Select User Type</asp:ListItem>
                                     <asp:ListItem>Farmer</asp:ListItem>
                                     <asp:ListItem>Trader</asp:ListItem>
                               </asp:DropDownList>
                               </div>		
				
				
				<div class="control-group">
				    <label class="control-label" for="inputUploadPhoto">Upload Photo:</label>
				    <div class="controls">				      
				       <asp:FileUpload ID="FileUpload1" runat="server" class="span5 photo-up"/>
				    </div>
				</div>

                </div>
			</div>
		</div>

                      <%--<button type="submit" class="submit"><em></em>submit</button>--%>

        <asp:Button ID="btnsub" runat="server" Text="Register"  class="submit" OnClick="btnsub_Click" />
        <br />
        <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
        <asp:HiddenField ID="hfID" runat="server" />

                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
	</div>

</asp:Content>

