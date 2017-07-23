<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AssignRemoveRoomBed.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width:100%;font-family:Calibri;font-size:medium">
          <tr>
              <td style="width:50%;">
                   <fieldset id="Fieldset1" runat="server" style="height:700px">
                          <legend style="color:orangered;text-align:left"><b>ASSIGN/REMOVE</b></legend>
                      
                      <table style="width:100%" border="0">
                          <tr style="height:60px;text-align:center;vertical-align:bottom">
                              <td colspan="3" style="text-align:center">
                                  <asp:Label runat="server" Text="ROOM / BED" ForeColor="Black" Font-Bold="true"></asp:Label><hr style="background-color:deepskyblue" />
                              </td>
                          </tr>
                          
                          
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label2" Text="Patient Name" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label3" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                <asp:DropDownList ID="drpPatients" runat="server">
                                        
                                    </asp:DropDownList>    
                                </td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label4" Text="Accomodation" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label5" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:DropDownList ID="drpAccomodation" runat="server">                                        
                                    </asp:DropDownList>
                                </td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label7" Text="Assign" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label8" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:CheckBox ID="chkAssign" runat="server" Checked="true" />
                                </td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3" style="text-align:left">
                                  
                              </td>
                          </tr>
                           <tr>
                                <td style="width:35%;text-align:right"><asp:Label ID="Label36" Text="Assigned Date" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label37" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtAssignedDate" TextMode="Date"  runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="drpFrom" runat="server">
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
                                    <asp:DropDownList ID="drpTo" runat="server">
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
                                        <asp:ListItem Text="60" Value="60"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                           <tr>
                                <td style="width:35%;text-align:right"><asp:Label ID="Label1" Text="Remove Date" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label6" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtRemoveDate" TextMode="Date"  runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="drpFrom2" runat="server">
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
                                    <asp:DropDownList ID="drpTo2" runat="server">
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
                                        <asp:ListItem Text="60" Value="60"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3" style="text-align:left">
                                  
                              </td>
                          </tr>
                          
                          <tr>
                                <td colspan="2"></td>
                                <td style="text-align:left"><asp:Button ID="btnAssign" Text="UPDATE" runat="server" OnClick="btnAssign_Click"></asp:Button></td>
                          </tr>
                          <tr style="height:60px;text-align:center;vertical-align:bottom">
                              <td colspan="3" style="text-align:center">
                                  <asp:Label ID="Label9" runat="server" Text="Update Doctor" Width="100%" BackColor="DeepSkyBlue" ForeColor="White" Font-Bold="true"></asp:Label><hr />
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label10" Text="Patient Name" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label11" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                <asp:DropDownList ID="drpPatienttoDoctor" runat="server">
                                        
                                    </asp:DropDownList>    
                                </td>
                          </tr>
                           <tr style="height:5px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label16" Text="Doctor Name" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label17" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                <asp:DropDownList ID="drpDoctor" runat="server">
                                        
                                    </asp:DropDownList>    
                                </td>
                          </tr>
                            <tr style="height:10px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td colspan="2"></td>
                                <td style="text-align:left"><asp:Button ID="btnUpdateDoctor" Text="UPDATE" runat="server" OnClick="btnUpdateDoctor_Click"></asp:Button></td>
                          </tr>
                          <tr style="height:60px;text-align:center;vertical-align:bottom">
                              <td colspan="3" style="text-align:center">
                                  <asp:Label ID="Label15" runat="server" Text="Assign / Remove Nurse" Width="100%" BackColor="DeepSkyBlue" ForeColor="White" Font-Bold="true"></asp:Label><hr />
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label12" Text="Patient Name" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label13" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                <asp:DropDownList ID="drpPatienttoNurse" runat="server">
                                        
                                    </asp:DropDownList>    
                                </td>
                          </tr>
                           <tr style="height:5px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label14" Text="Nurse Name" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label18" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                <asp:DropDownList ID="drpNurse" runat="server">
                                        
                                    </asp:DropDownList>    
                                </td>
                          </tr>
                           <tr style="height:5px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td colspan="2"></td>
                                <td style="text-align:left"><asp:Button ID="btnUpdateNurse" Text="UPDATE" runat="server" OnClick="btnUpdateNurse_Click"></asp:Button></td>
                          </tr>
                      </table>
                      </fieldset>
              </td>
          </tr>
      </table>
</asp:Content>

