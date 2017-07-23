<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="SchduleJobShift.aspx.cs" Inherits="SchduleJobShift" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 45%;
            height: 26px;
        }
        .auto-style2
        {
            width: 5px;
            height: 26px;
        }
        .auto-style3
        {
            height: 26px;
            width: 114px;
        }
        .auto-style4
        {
            width: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;font-family:Calibri;font-size:medium">
          <tr style="text-align:center">
              <td style="width:50%;text-align:center">
                   <fieldset id="Fieldset1" runat="server" style="height:700px">
                          <legend style="color:orangered;text-align:left"><b>SCHEDULE JOB SHIFT</b></legend>
                                <table style="width:100%" border="0">
                                    <tr style="height:50px;text-align:center;vertical-align:bottom">
                                        <td colspan="3" style="text-align:center">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:45%;text-align:right"><asp:Label ID="Label2" Text="Employee ID" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label3" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left" class="auto-style4">
                                        <asp:TextBox ID="TxtEmployeeId" runat="server"></asp:TextBox>
                                            
                                        </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="text-align:right" class="auto-style1"><asp:Label ID="Label1" Text="CName" runat="server"></asp:Label></td>
                                        <td style="text-align:center" class="auto-style2"><asp:Label ID="Label4" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left" class="auto-style3">
                                        <asp:TextBox ID="TxtCName" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="width:45%;text-align:right"><asp:Label ID="Label5" Text="Day" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label6" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left" class="auto-style4">
                                        <asp:TextBox ID="TxtDay" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="width:35%;text-align:right"><asp:Label ID="Label7" Text="Begin_time" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label8" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left" class="auto-style4">
                                            
                                            <asp:DropDownList ID="Drpbegintimefrom" runat="server">
                                                <asp:ListItem Text="01" Value="01"></asp:ListItem>
                                                <asp:ListItem Text="02" Value="02"></asp:ListItem>
                                                <asp:ListItem Text="03" Value="03"></asp:ListItem>
                                                <asp:ListItem Text="04" Value="04"></asp:ListItem>
                                                <asp:ListItem Text="05" Value="05"></asp:ListItem>
                                                <asp:ListItem Text="06" Value="06"></asp:ListItem>
                                                <asp:ListItem Text="07" Value="07"></asp:ListItem>
                                                <asp:ListItem Text="08" Value="08"></asp:ListItem>
                                                <asp:ListItem Text="09" Value="09"></asp:ListItem>
                                                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                                <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                                <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                                <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                                <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                                <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                                <asp:ListItem Text="16" Value="16"></asp:ListItem>
                                                <asp:ListItem Text="17" Value="17"></asp:ListItem>
                                                <asp:ListItem Text="18" Value="18"></asp:ListItem>
                                                <asp:ListItem Text="19" Value="19"></asp:ListItem>
                                                <asp:ListItem Text="20" Value="20"></asp:ListItem>
                                                <asp:ListItem Text="21" Value="21"></asp:ListItem>
                                                <asp:ListItem Text="22" Value="22"></asp:ListItem>
                                                <asp:ListItem Text="23" Value="23"></asp:ListItem>
                                                <asp:ListItem Text="24" Value="24"></asp:ListItem>                                         
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="Dropbegintimeto" runat="server">
                                                <asp:ListItem Text="01" Value="01"></asp:ListItem>
                                                <asp:ListItem Text="02" Value="02"></asp:ListItem>
                                                <asp:ListItem Text="03" Value="03"></asp:ListItem>
                                                <asp:ListItem Text="04" Value="04"></asp:ListItem>
                                                <asp:ListItem Text="05" Value="05"></asp:ListItem>
                                                <asp:ListItem Text="06" Value="06"></asp:ListItem>
                                                <asp:ListItem Text="07" Value="07"></asp:ListItem>
                                                <asp:ListItem Text="08" Value="08"></asp:ListItem>
                                                <asp:ListItem Text="09" Value="09"></asp:ListItem>
                                                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                                <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                                <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                                <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                                <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                                <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                                <asp:ListItem Text="16" Value="16"></asp:ListItem>
                                                <asp:ListItem Text="17" Value="17"></asp:ListItem>
                                                <asp:ListItem Text="18" Value="18"></asp:ListItem>
                                                <asp:ListItem Text="19" Value="19"></asp:ListItem>
                                                <asp:ListItem Text="20" Value="20"></asp:ListItem>
                                                <asp:ListItem Text="21" Value="21"></asp:ListItem>
                                                <asp:ListItem Text="22" Value="22"></asp:ListItem>
                                                <asp:ListItem Text="23" Value="23"></asp:ListItem>
                                                <asp:ListItem Text="24" Value="24"></asp:ListItem> 
                                                <asp:ListItem Text="25" Value="25"></asp:ListItem>
                                                <asp:ListItem Text="26" Value="26"></asp:ListItem>
                                                <asp:ListItem Text="27" Value="27"></asp:ListItem>
                                                <asp:ListItem Text="28" Value="28"></asp:ListItem>
                                                <asp:ListItem Text="29" Value="29"></asp:ListItem>
                                                <asp:ListItem Text="30" Value="30"></asp:ListItem>
                                                <asp:ListItem Text="31" Value="31"></asp:ListItem>
                                                <asp:ListItem Text="32" Value="32"></asp:ListItem>
                                                <asp:ListItem Text="33" Value="33"></asp:ListItem>
                                                <asp:ListItem Text="34" Value="34"></asp:ListItem>
                                                <asp:ListItem Text="35" Value="35"></asp:ListItem>
                                                <asp:ListItem Text="36" Value="36"></asp:ListItem>
                                                <asp:ListItem Text="37" Value="37"></asp:ListItem>
                                                <asp:ListItem Text="38" Value="38"></asp:ListItem>
                                                <asp:ListItem Text="39" Value="39"></asp:ListItem>
                                                <asp:ListItem Text="40" Value="40"></asp:ListItem>
                                                <asp:ListItem Text="41" Value="41"></asp:ListItem>
                                                <asp:ListItem Text="42" Value="42"></asp:ListItem>
                                                <asp:ListItem Text="43" Value="43"></asp:ListItem>
                                                <asp:ListItem Text="44" Value="44"></asp:ListItem>
                                                <asp:ListItem Text="45" Value="45"></asp:ListItem>
                                                <asp:ListItem Text="46" Value="46"></asp:ListItem>
                                                <asp:ListItem Text="47" Value="47"></asp:ListItem>
                                                <asp:ListItem Text="48" Value="48"></asp:ListItem>
                                                <asp:ListItem Text="49" Value="49"></asp:ListItem>
                                                <asp:ListItem Text="50" Value="50"></asp:ListItem>
                                                <asp:ListItem Text="51" Value="51"></asp:ListItem>
                                                <asp:ListItem Text="52" Value="52"></asp:ListItem>
                                                <asp:ListItem Text="53" Value="53"></asp:ListItem>
                                                <asp:ListItem Text="54" Value="54"></asp:ListItem>
                                                <asp:ListItem Text="55" Value="55"></asp:ListItem>
                                                <asp:ListItem Text="56" Value="56"></asp:ListItem>
                                                <asp:ListItem Text="57" Value="57"></asp:ListItem>
                                                <asp:ListItem Text="58" Value="58"></asp:ListItem>
                                                <asp:ListItem Text="59" Value="59"></asp:ListItem>
                                                <asp:ListItem Text="00" Value="00"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        
                                        <td style="colspan:3px;text-align:left"><asp:Label ID="Label10" Text="HH : MM" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td style="width:35%;text-align:right"><asp:Label ID="Label36" Text="End_Time" runat="server"></asp:Label></td>
                                        <td style="width:5px;text-align:center"><asp:Label ID="Label37" Text=":" runat="server"></asp:Label></td>
                                        <td style="text-align:left" class="auto-style4">
                                                <asp:DropDownList ID="drpendtimeFrom" runat="server">
                                                <asp:ListItem Text="01" Value="01"></asp:ListItem>
                                                <asp:ListItem Text="02" Value="02"></asp:ListItem>
                                                <asp:ListItem Text="03" Value="03"></asp:ListItem>
                                                <asp:ListItem Text="04" Value="04"></asp:ListItem>
                                                <asp:ListItem Text="05" Value="05"></asp:ListItem>
                                                <asp:ListItem Text="06" Value="06"></asp:ListItem>
                                                <asp:ListItem Text="07" Value="07"></asp:ListItem>
                                                <asp:ListItem Text="08" Value="08"></asp:ListItem>
                                                <asp:ListItem Text="09" Value="09"></asp:ListItem>
                                                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                                <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                                <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                                <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                                <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                                <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                                <asp:ListItem Text="16" Value="16"></asp:ListItem>
                                                <asp:ListItem Text="17" Value="17"></asp:ListItem>
                                                <asp:ListItem Text="18" Value="18"></asp:ListItem>
                                                <asp:ListItem Text="19" Value="19"></asp:ListItem>
                                                <asp:ListItem Text="20" Value="20"></asp:ListItem>
                                                <asp:ListItem Text="21" Value="21"></asp:ListItem>
                                                <asp:ListItem Text="22" Value="22"></asp:ListItem>
                                                <asp:ListItem Text="23" Value="23"></asp:ListItem>
                                                <asp:ListItem Text="24" Value="24"></asp:ListItem>                                         
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="drpendtimeto" runat="server">
                                                <asp:ListItem Text="01" Value="01"></asp:ListItem>
                                                <asp:ListItem Text="02" Value="02"></asp:ListItem>
                                                <asp:ListItem Text="03" Value="03"></asp:ListItem>
                                                <asp:ListItem Text="04" Value="04"></asp:ListItem>
                                                <asp:ListItem Text="05" Value="05"></asp:ListItem>
                                                <asp:ListItem Text="06" Value="06"></asp:ListItem>
                                                <asp:ListItem Text="07" Value="07"></asp:ListItem>
                                                <asp:ListItem Text="08" Value="08"></asp:ListItem>
                                                <asp:ListItem Text="09" Value="09"></asp:ListItem>
                                                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                                <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                                <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                                <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                                <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                                <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                                <asp:ListItem Text="16" Value="16"></asp:ListItem>
                                                <asp:ListItem Text="17" Value="17"></asp:ListItem>
                                                <asp:ListItem Text="18" Value="18"></asp:ListItem>
                                                <asp:ListItem Text="19" Value="19"></asp:ListItem>
                                                <asp:ListItem Text="20" Value="20"></asp:ListItem>
                                                <asp:ListItem Text="21" Value="21"></asp:ListItem>
                                                <asp:ListItem Text="22" Value="22"></asp:ListItem>
                                                <asp:ListItem Text="23" Value="23"></asp:ListItem>
                                                <asp:ListItem Text="24" Value="24"></asp:ListItem> 
                                                <asp:ListItem Text="25" Value="25"></asp:ListItem>
                                                <asp:ListItem Text="26" Value="26"></asp:ListItem>
                                                <asp:ListItem Text="27" Value="27"></asp:ListItem>
                                                <asp:ListItem Text="28" Value="28"></asp:ListItem>
                                                <asp:ListItem Text="29" Value="29"></asp:ListItem>
                                                <asp:ListItem Text="30" Value="30"></asp:ListItem>
                                                <asp:ListItem Text="31" Value="31"></asp:ListItem>
                                                <asp:ListItem Text="32" Value="32"></asp:ListItem>
                                                <asp:ListItem Text="33" Value="33"></asp:ListItem>
                                                <asp:ListItem Text="34" Value="34"></asp:ListItem>
                                                <asp:ListItem Text="35" Value="35"></asp:ListItem>
                                                <asp:ListItem Text="36" Value="36"></asp:ListItem>
                                                <asp:ListItem Text="37" Value="37"></asp:ListItem>
                                                <asp:ListItem Text="38" Value="38"></asp:ListItem>
                                                <asp:ListItem Text="39" Value="39"></asp:ListItem>
                                                <asp:ListItem Text="40" Value="40"></asp:ListItem>
                                                <asp:ListItem Text="41" Value="41"></asp:ListItem>
                                                <asp:ListItem Text="42" Value="42"></asp:ListItem>
                                                <asp:ListItem Text="43" Value="43"></asp:ListItem>
                                                <asp:ListItem Text="44" Value="44"></asp:ListItem>
                                                <asp:ListItem Text="45" Value="45"></asp:ListItem>
                                                <asp:ListItem Text="46" Value="46"></asp:ListItem>
                                                <asp:ListItem Text="47" Value="47"></asp:ListItem>
                                                <asp:ListItem Text="48" Value="48"></asp:ListItem>
                                                <asp:ListItem Text="49" Value="49"></asp:ListItem>
                                                <asp:ListItem Text="50" Value="50"></asp:ListItem>
                                                <asp:ListItem Text="51" Value="51"></asp:ListItem>
                                                <asp:ListItem Text="52" Value="52"></asp:ListItem>
                                                <asp:ListItem Text="53" Value="53"></asp:ListItem>
                                                <asp:ListItem Text="54" Value="54"></asp:ListItem>
                                                <asp:ListItem Text="55" Value="55"></asp:ListItem>
                                                <asp:ListItem Text="56" Value="56"></asp:ListItem>
                                                <asp:ListItem Text="57" Value="57"></asp:ListItem>
                                                <asp:ListItem Text="58" Value="58"></asp:ListItem>
                                                <asp:ListItem Text="59" Value="59"></asp:ListItem>
                                                <asp:ListItem Text="00" Value="00"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="colspan:3px;text-align:left"><asp:Label ID="Label11" Text="HH : MM" runat="server"></asp:Label>
                                        
                                        </td>
                                        
                                    </tr>
                                    <tr style="height:10px"> <td colspan="3" style="text-align:center"></td></tr>
                                    <tr>
                                        <td colspan="2"></td>
                                        <td style="text-align:left" class="auto-style4"><asp:Button ID="btnUpdateShift" Text="UPDATE" runat="server" OnClick="btnUpdateShift_Click"></asp:Button></td>
                                    </tr>
                                 </table>
                    </fieldset>
                </td>
              </tr>
        </table>
</asp:Content>

