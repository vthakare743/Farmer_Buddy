<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMasterPage.master" AutoEventWireup="true" CodeFile="WeatherInfo.aspx.cs" Inherits="USER_WeatherInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="outer">
    <asp:Image ID="Image2" runat="server" Height="20px" 
           ImageUrl="~/web_img/blinking.gif" Width="36px" />
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="#006666" Text="Weather Information"></asp:Label>
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td>
                Enter City</td>
            <td>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Weather Information" 
                         OnClick="GetWeatherInfo" />
            </td>
        </tr>
      
        <tr>
            <td>
                &nbsp;</td>
            <td>
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
      
        <tr>
            <td colspan="2">
               
               
                <div class="wrapper">
    <div class="head">
    <h3>Current weather report&nbsp;
        <asp:Label ID="lblcity" runat="server"></asp:Label>
        </h3>
    </div>
           <div class="container">
           
           <div class="partition">

           <div class="img-div">

                
               <asp:Image ID="imgWeatherIcon" runat="server" />

           </div>

          <div class="con-div">
           </div>


           </div>
           
           <div class="partition">

           <div class="con-div">
            <asp:Label ID="lblCity_Country" runat="server" />
                <asp:Image ID="imgCountryFlag" runat="server" />
                <asp:Label ID="lblDescription" runat="server" />

           </div>

           </div>

           <div class="partition">

           <div class="con-div">

           <h4> Humidity:</h4>
                <asp:Label ID="lblHumidity" runat="server" />

           </div>


           </div>

           <div class="partition">

           <div class="con-div">

           <h4> Temperature:</h4>

               <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Yellow" 
                   Text="Min :"></asp:Label>

           <asp:Label ID="lblTempMin" runat="server" />
                <br />
               <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Yellow" 
                   Text="Max :"></asp:Label>
                <asp:Label ID="lblTempMax" runat="server" />
                <br />
               <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Yellow" 
                   Text="Day :"></asp:Label>
&nbsp;<asp:Label ID="lblTempDay" runat="server" />
                <br />
               <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Yellow" 
                   Text="Night :"></asp:Label>
                <asp:Label ID="lblTempNight" runat="server" />&nbsp;</div>


           </div>

           </div>

    </div>
               
               
               </td>
        </tr>
      
    </table>
</div>
</asp:Content>

