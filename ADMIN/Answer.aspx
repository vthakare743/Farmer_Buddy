<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Answer.aspx.cs" Inherits="ADMIN_Answer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div class="col-md-6 col-sm-6 col-xs-12">--%>
        <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                          Reply to&nbsp; Question ?
                        </div>
            <div class="panel-body">
                <form role="form">
                <div class="form-group">
                    <br />
                    <p class="help-block">
                                                &nbsp;&nbsp;&nbsp;&nbsp; 
                                                Question<br />
                    </p>
                </div>
                  <div class="form-group">
                    <asp:TextBox ID="txtQue" runat="server" class="form-control" 
                                               TextMode="MultiLine"></asp:TextBox>
                     </div>
                      <br />
                      <p class="help-block">
                                                &nbsp;&nbsp;&nbsp;&nbsp; 
                                                UserName<br />
                      </p>
                      <div class="form-group">
                          <asp:TextBox ID="txtname" runat="server" class="form-control" ></asp:TextBox>
                          <br />
                      </div>
                     
                    <br />
                      <p class="help-block">
                                                &nbsp;&nbsp;&nbsp;&nbsp; 
                                                Mobile No<br />
                      </p>
                      <div class="form-group">
                          <asp:TextBox ID="txtmobile" runat="server" class="form-control" ></asp:TextBox>
                          <br />
                      </div>
                     
                

                <div class="form-group">
                     <p class="help-block">
                                                &nbsp;&nbsp;&nbsp;&nbsp; 
                                                Answer <br />
                      </p>
                    <asp:TextBox ID="txtans" runat="server" class="form-control" 
                                                placeholder=" Enter Answer:" TextMode="MultiLine"></asp:TextBox>
                    <br />
                </div>
                <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/Expertadvice.aspx">Back</asp:HyperLink>
                <asp:Button ID="btnsubmit" runat="server" class="btn btn-success" ForeColor="Black" Text="Submit" Width="80px" onclick="btnUpload_Click"  />
                <br />
                <br />
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                </form>
            </div>
        </div>
   
        </div>
</asp:Content>

