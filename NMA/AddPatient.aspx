<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddPatient.aspx.cs" Inherits="AddPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:100%;font-family:Calibri;font-size:medium">
      <tr>
          <td style="width:50%;">
              <asp:MultiView runat="server" ID="mltView" ActiveViewIndex="0">
                  <asp:View ID="View1" runat="server">
                      <fieldset id="Fieldset1" runat="server" style="height:700px">
                          <legend style="color:orangered;text-align:left"><b>PATIENT GENERAL DETAILS</b></legend>
                      
                      <table style="width:100%" border="0">
                          <tr style="height:100px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="lblPnum" Text="Patient No" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label31" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtPnum" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="lblSSN" Text="SSN" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label1" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtSSN" runat="server"></asp:TextBox></td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label2" Text="Patient Name" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label3" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtPatientName" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label4" Text="Gender" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label5" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:DropDownList ID="drpGender" runat="server">
                                        <asp:ListItem Text="Male" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label6" Text="Date Of Birth" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label7" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="cdlDOB" TextMode="Date" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                           <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label8" Text="Address" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label9" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtAddress" TextMode="MultiLine" Rows="5" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label10" Text="Telephone" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label11" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox></td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label12" Text="Blood Group" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label13" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtbloodgroup" runat="server"></asp:TextBox></td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td colspan="2"></td>
                                <td style="text-align:left"><asp:Button ID="btnView2" Text="  NEXT  " runat="server" OnClick="btnView2_Click"></asp:Button></td>
                          </tr>
                      </table>
                      </fieldset>

                  </asp:View>

                  <asp:View ID="View2" runat="server">
                      <fieldset id="Fieldset2" runat="server" style="height:700px">
                          <legend style="color:orangered;text-align:left"><b>PATIENT MEDICAL DETAILS</b></legend>
                      
                      <table style="width:100%" border="0">
                          <tr style="height:100px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label14" Text="Test Name" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label15" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtTestName" runat="server"></asp:TextBox></td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label16" Text="HDL Cholesterol" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label17" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtHDL" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label18" Text="LDL Cholesterol" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label19" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtLDL" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label20" Text="Triglycerides" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label21" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtTriglycerides" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                           <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label22" Text="Blood Sugar" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label23" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtBloodSuger" Rows="5" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label24" Text="Allergies (If any)" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label25" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtAllergies" runat="server"></asp:TextBox></td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label26" Text="Illness Description" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label27" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtIllness" runat="server"></asp:TextBox></td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label28" Text="Previous Illnessess/Diagnoses" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label29" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtPreviousDiagnose" runat="server"></asp:TextBox></td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td colspan="2"></td>
                                <td style="text-align:left">
                                    <asp:Button ID="btnView3" Text="SUBMIT DETAILS" runat="server" OnClick="btnSubmitPatient_Click"></asp:Button>
                                    <asp:Label ID="lblSpace" Width="15px" runat="server"></asp:Label>
                                    <asp:Button ID="btnGoToGeneral" Text="BACK" runat="server" OnClick="btnGoToGeneral_Click"></asp:Button>
                                 </td>
                          </tr>
                      </table>
                      </fieldset>

                  </asp:View>

                <%--  <asp:View ID="View3" runat="server">
                      <fieldset id="Fieldset3" runat="server" style="height:700px">
                          <legend style="color:orangered;text-align:left"><b>CONSULTATION</b></legend>
                      
                      <table style="width:100%" border="0">
                          <tr style="height:100px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>
                          <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label33" Text="Patient Number" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label38" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left"><asp:TextBox ID="txtPatientNumber" runat="server" ReadOnly="True"></asp:TextBox></td>
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
                                        <asp:ListItem Text="60" Value="60"></asp:ListItem>
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
                                    <asp:Button ID="btnSubmitPatient" Text="SUBMIT DETAILS" runat="server" OnClick="btnSubmitPatient_Click"></asp:Button>
                                    <asp:Label ID="Label32" Width="15px" runat="server"></asp:Label>
                                    <asp:Button ID="Button2" Text="BACK" runat="server" OnClick="Button2_Click"></asp:Button>
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
                      </fieldset>--%>

<%--                  </asp:View>--%>

              </asp:MultiView>

          </td>
         

      </tr>


  </table>

</asp:Content>

