<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookSurgery.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;font-family:Calibri;font-size:medium">
          <tr style="text-align:center">
              <td style="width:50%;text-align:center">
                   <fieldset id="Fieldset1" runat="server" style="height:700px">
                          <legend style="color:orangered;text-align:left"><b>BOOK SURGERY</b></legend>
                                <table style="width:100%" border="0">
                                    <tr style="height:50px;text-align:center;vertical-align:bottom">
                                        <td colspan="3" style="text-align:center">
                                  
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:45%;text-align:right"><asp:Label ID="Label2" Text="Patient No" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label3" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left">
                                        <asp:TextBox ID="txtPnum" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="width:45%;text-align:right"><asp:Label ID="Label1" Text="Surgery Name" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label4" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left">
                                        <asp:DropDownList ID="drpSurgery" runat="server"></asp:DropDownList>    
                                        </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="width:45%;text-align:right"><asp:Label ID="Label11" Text="Surgeon Id" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label12" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left">
                                        <asp:TextBox ID="txtSId" runat="server"></asp:TextBox>
                                            </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="width:45%;text-align:right"><asp:Label ID="Label13" Text="Surgery Name" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label14" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left">
                                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                            </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="width:35%;text-align:right"><asp:Label ID="Label36" Text="Operation Date" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label37" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left">
                                            <asp:TextBox ID="txtAssignedDate" TextMode="Date"  runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="width:35%;text-align:right"><asp:Label ID="Label5" Text="Operation Theatre" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label6" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left">
                                            <asp:TextBox ID="Txtopt" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="width:35%;text-align:right"><asp:Label ID="Label7" Text="Begin Time" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label8" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left">
                                            <asp:TextBox ID="txtbegintime" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="width:35%;text-align:right"><asp:Label ID="Label9" Text="End Time" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label10" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left">
                                            <asp:TextBox ID="txtendtime" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td colspan="2"></td>
                                        <td style="text-align:left"><asp:Button ID="btnUpdateSurgery" Text="UPDATE" runat="server" OnClick="btnUpdateSurgery_Click"></asp:Button></td>
                                    </tr>
                                 </table>
                    </fieldset>
                </td>
              </tr>
        </table>
</asp:Content>

