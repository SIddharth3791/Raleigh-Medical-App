<%@ Page Title ="" MasterPageFile="~/MasterPage.master"  Language="C#" AutoEventWireup="true" CodeFile="BookDoctor.aspx.cs" Inherits="BookDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:100%;font-family:Calibri;font-size:medium">
      <tr>
          <td style="width:50%;">
              <asp:MultiView runat="server" ID="mltView" ActiveViewIndex="0">
  
                  <asp:View ID="View" runat="server">
                      <fieldset id="Fieldset3" runat="server" style="height:700px">
                          <legend style="color:orangered;text-align:left"><b>CONSULTATION/SCHEDULE AN APPOINTMENT</b></legend>
                      
                      <table style="width:100%" border="0">
                          <tr style="height:50px">
                              <td colspan="3">
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label33" Text="Patient Number" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label38" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtPatientNumber" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:35%;text-align:right"><asp:Label ID="Label34" Text="Doctor" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label35" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:DropDownList ID="drpDoctor" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpDoctor_SelectedIndexChanged">
                                       
                                    </asp:DropDownList>
                                </td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                               <td style="width:35%;text-align:right"><asp:Label ID="Label39" Text="Availability Code" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label40" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                                </td>

                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:35%;text-align:right"><asp:Label ID="Label36" Text="Date" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label37" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtAppointmentDate" TextMode="Date"  runat="server"></asp:TextBox>
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
                                        <asp:ListItem Text="00" Value="00"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                           <tr>
                                <td style="width:35%;text-align:right"><asp:Label ID="Label30" Text="Notes (If Any)" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label31" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtNotes" TextMode="MultiLine" Rows="5" Columns="35" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>               
                          <tr>
                                <td colspan="2"></td>
                                <td  style="text-align:left">
                                    <asp:Button ID="btnSchedule" Text="SCHEDULE AN APPOINTMENT" runat="server" OnClick="btnScheduleAppointment_Click"></asp:Button>
                                    
                                </td>                                
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr> 
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr> 

                          <tr style="height:5px">
                              <td colspan="3">
                                  
                              </td>
                          </tr> 
                          <tr style="height:5px">                                
                                <td colspan="3"  style="background-color:deepskyblue;text-align:center">
                                    <asp:Label ID="lblLabel" text="CHECK AVAILABILITY BEFORE SCHEDULE AN APPOINTMENT" Font-Size="Smaller" Font-Bold="true" Font-Names="Calibri" ForeColor="White" runat="server"></asp:Label></td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>  
                          <tr>
                              
                              <td colspan="3">
                                  <div style="text-align:center;width:100%">
                                  <asp:GridView ID ="grdDoctorSchedule" runat ="server" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="Small" Width="100%">
                                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                      <EditRowStyle BackColor="#999999" />
                                      <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                      <HeaderStyle BackColor="DodgerBlue" Font-Bold="True" ForeColor="White" Font-Size="Small" />
                                      <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                      <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                      <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                      <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                      <SortedAscendingHeaderStyle BackColor="DodgerBlue"/>
                                      <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                      <SortedDescendingHeaderStyle BackColor="DodgerBlue" />
                                  </asp:GridView>
                                  </div>
                              </td>
                          </tr>
                      </table>
                      </fieldset>

                  </asp:View>

              </asp:MultiView>

          </td>
         

      </tr>


  </table>

</asp:Content>


