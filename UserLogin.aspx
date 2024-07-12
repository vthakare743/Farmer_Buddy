<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <p>
        <br />
    </p>
       <div style="border: thick solid #339933">
        <h2 >User Login</h2>

           <div id="ajax-contact-form" class="form-horizontal" >
		<div class="row">
			<div class="span5">
				
               
               
                   <div class="control-group"> 
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
				   
                        &nbsp;&nbsp;&nbsp;&nbsp;				      
				   
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
               <br />

                <asp:Button ID="btnLogin" runat="server" BackColor="#00CC66" ForeColor="White" Text="LogIn" Width="132px" Font-Bold="True" 
            Font-Size="Large" OnClick="btnLogin_Click" />

               <br />
               <br />

                <asp:Label ID="lblmsg" runat="server" ForeColor="Green" Font-Size="Large"></asp:Label>
	</div>
    </div>

</asp:Content>

