<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Crop.aspx.cs" Inherits="ADMIN_Crop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-lg-6">
   <div class="card">
    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                Crop
            </div>
            <div class="panel-body">
                <form role="form">

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Product Name</b></label>
                <asp:TextBox ID="txtname" runat="server" class="form-control"></asp:TextBox>
                <br />
                </div>

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>MRP-Amount</b></label>
                <asp:TextBox ID="txtmrp" runat="server" class="form-control"></asp:TextBox>
        <br />
                </div>

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Sell-Amount</b></label>
                <asp:TextBox ID="txtsell" runat="server" class="form-control"></asp:TextBox>
        <br />
                </div>

                    <div class="form-group">
                <label for="cc-number" class="control-label mb-1"><b>Description</b></label>
                <asp:TextBox ID="txtdesc" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
        <br />
                </div>

                    <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-info"  ForeColor="Black" Width="80px" NavigateUrl="~/ADMIN/ViewManagement.aspx" >Back</asp:HyperLink>
                    <asp:Button ID="btnupdatee" runat="server" class="btn btn-success" Text="Update" ForeColor="Black" Width ="80px" OnClick="btnupdatee_Click" />
                   
                    <br />

                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

               <%-- <table style="width: 36%; margin-left: 0px;" >
                    <tr>
                        <td align="center" colspan="2" style="height: 25px"><strong>Crop Management</strong></td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 218px">Product Name:</td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 218px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <%--<tr>
                        <td style="width: 218px">Photo:</td>
                        <td>
                            <asp:Image ID="Image1" runat="server" height="100" Width="200" />
                        </td>
                    </tr>--%>
                    <%--<tr>
                        <td style="width: 218px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>--%>
                 <%--   <tr>
                        <td style="width: 218px; height: 25px;">MRP Amount:</td>
                        <td style="height: 25px">
                            <asp:TextBox ID="txtmrp" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 218px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 218px; height: 25px">Sell Amount:</td>
                        <td style="height: 25px">
                            <asp:TextBox ID="txtsell" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 218px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 218px">Description:</td>
                        <td>
                            <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 218px; height: 25px;"></td>
                        <td style="height: 25px"></td>
                    </tr>
                    <tr>
                        <td style="width: 218px; height: 25px;">&nbsp;</td>
                        <td style="height: 25px">&nbsp;</td>
                  </tr>
                    <tr>
                        <td style="width: 218px; height: 25px;">&nbsp;</td>
                        <td style="height: 25px">&nbsp;</td>
                    </tr>
                   
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnup" runat="server" Text="Update" Width="74px" OnClick="btnup_Click" />
                            &nbsp;
                            <asp:Button ID="btndelete" runat="server" Text="Delete" Width="87px" OnClick="btndelete_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>--%>
       
                     </form>
                </div>
                        </div>

            </div>
        </div>
    </div>

    <div class="col-lg-6">
   <div class="card">
                    <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                Crop
            </div>
            <div class="panel-body">
                

                    <div class="control-group">
				    <label class="control-label" for="inputUploadPhoto">Photo:</label>

                    <asp:Image ID="Image1" runat="server" height="100" Width="200" />
                        <br />
                        <br />

				    <div class="controls">				      
				       <asp:FileUpload ID="FileUpload1" runat="server" class="span5 photo-up"/>
                        <br />
				    </div>
				</div>

                    <asp:Button ID="btnPhotoUpdate" runat="server" class="btn btn-success" Text="Update" ForeColor="Black" Width="80px" OnClick="btnPhotoUpdate_Click" />
                    <br />

                     <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    
                     <%--<table style="width: 36%; margin-left: 0px;">
                         <tr>
                        <td style="width: 141px">Photo:</td>
                        <td>
                            <asp:Image ID="Image1" runat="server" height="100" Width="200" />
                        </td>
                    </tr>
                         <tr>
                        <td style="width: 141px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                     <tr>
                        <td style="width: 141px">
                             <div class="control-group">
				    <label class="control-label" for="inputUploadPhoto">Photo:</label>
				    <div class="controls">				      
				       <asp:FileUpload ID="FileUpload1" runat="server" class="span5 photo-up"/>
                        <br />
				    </div>
				</div>
                            </td>
                    </tr>
                     <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="Update" Width="115px" />
                        </td>
                    </tr>

                    </table>--%>
      
                   
                 </div>
                        </div>
            </div>
        </div>
    </div>
</asp:Content>

