<%@ Page Title="" Language="C#" MasterPageFile="~/USER/LoginMasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="USER_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" height="550px" width="750px" style="border-radius:5%" BorderStyle="Double">


        <div class="card">
                                           <div class="col-lg-3">
                                               <br />
                                               
        <asp:Image ID="Image1" runat="server" ImageUrl="~/USER/photo/WhatsApp Image 2023-05-24 at 3.27.04 PM.jpeg"  Height="120px" width="170px" style="border-radius:5%" BorderStyle="Inset"/>
                                               <br />
                                               <br />

                                               <asp:Label ID="Label5" runat="server" Font-size="Medium" Text="Receipt no."></asp:Label>
                                               

</div>
            </div>
        <br />

        <div class="col-md-9">
                                    <div class="card-header">
                                        <center>
                                    <b>   <asp:Label ID="Label1" runat="server" Font-size="XX-Large" Text="C0RPUS FITNESS CLUB"></asp:Label></b>
                                            </center>
                                        <br />
                                        <asp:Label ID="Label2" runat="server"  Font-size="Large" Text="Address : 3rd floor, Above SBI, Harshraj Colony, VMV Road, Amravati" style="font-weight: 700"></asp:Label>
                                       
                                        <br />
                                        <br />
                                        <br />

                                     


                                        </div>
            </div>
        <br />

         <div class="card">
                                           <div class="col-lg-5">

        <center>
                                              <u><asp:Label ID="Label4" runat="server" font-size="Large" Text="Receipt" Font-Underline="True" style="font-weight: 700"></asp:Label></u> 
                                            </center>
        </div>
             </div>

        <br />
        <br />

        <div class="card">
                                           <div class="col-lg-12">
                                               <br />
                                               <br />

                                               <asp:Label ID="Label6" runat="server" Text="Mr.Mrs./Miss:"></asp:Label>
                                               </div>
            </div>
                                               <br />
                                               <br />
                                               
                                               <div class="card">
                                           <div class="col-lg-4">
                                               <br />
                                              

                                               <asp:Label ID="Label7" runat="server" Text="From"></asp:Label>

                                               </div>
            </div>

         <div class="card">
                                           <div class="col-lg-6">
                                               <br />
                                               <asp:Label ID="Label8" runat="server" Text="To"></asp:Label>

                                               </div>
             </div>
        <br />
        <br />

         <div class="card">
                                           <div class="col-lg-3">
                                               <br />

                                               <asp:Panel ID="Panel2" runat="server" height="50px" width="150px" style="border-radius:5%" BorderStyle="Solid">

                                                   <asp:Label ID="Label3" runat="server" Text="Rs."></asp:Label>

                                               </asp:Panel>
                                               </div>
             </div>
        <br />

        <div class="card">
                                           <div class="col-lg-3">
                                               <br />

                                               <center>
                                          <b>    <asp:Label ID="Label9" runat="server" Text="For Thank"></asp:Label></b> 
                                                   </center>

                                               </div>
            </div>

        <br />

        <div class="card">
                                           <div class="col-lg-3">
                                               <br />

                                               <asp:Panel ID="Panel3" runat="server"  height="100px" width="300px" style="border-radius:5%" BorderStyle="Solid">
                                                   
                                                   <asp:Label ID="Label10" runat="server" Text="Total"></asp:Label>
                                                   <br />
                                                   <asp:Label ID="Label11" runat="server" Text="Paid"></asp:Label>
                                                   <br />
                                                   <asp:Label ID="Label12" runat="server" Text="Remaining"></asp:Label>
                                               </asp:Panel>

                                               </div>

                                               </div>
        <br />

        <div class="card">
                                           <div class="col-lg-12">
                                               <br />
<center>
       <b> <asp:Label ID="Label13" runat="server" Text="Type of membership Alloted Health Center/Gymnsium bath/body/Massage/Aerobics/Yoga."></asp:Label></b>
    </center>
                                               </div>
            </div>
    </asp:Panel>


</asp:Content>

