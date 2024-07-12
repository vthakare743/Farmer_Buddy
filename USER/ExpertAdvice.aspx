<%@ Page Title="" Language="C#" MasterPageFile="~/USER/UserMasterPage.master" AutoEventWireup="true" CodeFile="ExpertAdvice.aspx.cs" Inherits="USER_ExpertAdvice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                          Ask Question ?
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                        <div class="form-group">

                                           
                                            
                                            <asp:TextBox ID="txtque" runat="server" class="form-control" 
                                                placeholder=" Enter Question:" TextMode="MultiLine"></asp:TextBox><br />
                                            <p class="help-block">
                                                &nbsp;</p>
                                        </div>
                                        
                                <br />
                                            
                                 
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit" onclick="btnUpload_Click"  />
                                        <br />
                                        <br />
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>

                                    </form>
                            <asp:HiddenField ID="hfid" runat="server" />
                            </div>
                        </div>
                            </div>

                            <div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-danger">
                        <div class="panel-heading">
                           My Questions ?
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                    </form>
                            </div>
                        </div>
                            </div>
</asp:Content>

