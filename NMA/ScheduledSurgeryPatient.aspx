<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ScheduledSurgeryPatient.aspx.cs" Inherits="ScheduledSurgeryPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1
        {
            width: 45%;
        }
        .auto-style2
        {
            width: 170px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <tr>
          <td style="width:50%;">
              <asp:MultiView runat="server" ID="mltView" ActiveViewIndex="0">
                <asp:View ID="View" runat="server">
                      <fieldset id="Fieldset" runat="server" style="height:700px">
                          <legend style="color:orangered;text-align:left"><b>VIEW SCHEDULED SURGERY PER PATIENT</b></legend>
                      
                      <table style="width:100%" border="0">
                          <tr style="height:50px">
                              <td colspan="2">
                                  
                              </td>
                          </tr>
                          <tr>
                              <td style="text-align:right" class="auto-style1"><asp:Label ID="Label1" Text="Patient Number :" runat="server"></asp:Label></td>
                              <td style="text-align:left" class="auto-style2"><asp:TextBox ID="TxtPatientNumber" runat="server" ></asp:TextBox></td>
                         
                                 <td  style="text-align:left">
                                    <asp:Button ID="btnSubmit" Text="SEARCH" runat="server" OnClick="btnSearch_Click"></asp:Button>
                                    
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
                              <tr style="height:10px">
                              <td colspan="3">
                                  
                              </td>
                          </tr>  
                          <tr>
                              
                              <td colspan="3">
                                  <div style="text-align:center;width:100%">
                                  <asp:GridView ID ="grdIllnessSearch" runat ="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="false" GridLines="None" Font-Size="Small" Width="100%">
                                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                      <EditRowStyle BackColor="#999999" />
                                      <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                      <HeaderStyle BackColor="DodgerBlue" Font-Bold="True" ForeColor="White" Font-Size="Small" />
                                      <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                      <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                      <Columns>
                                            <asp:BoundField DataField="EmpId" HeaderText="EMPID" Visible="True" />
                                            <asp:BoundField DataField="PATIENTNO" HeaderText="PATIENTNO" />
                                            <asp:BoundField DataField="SCODE" HeaderText="CODE" />
                                            <asp:BoundField DataField="NAME" HeaderText="NAME" />
                                            <asp:BoundField DataField="SDATE" HeaderText="SURGERY DATE" />
                                            <asp:BoundField DataField="OPT" HeaderText="OPERATION THEATRE" />
                                           <%-- <asp:BoundField DataField="AVAILABILITY" HeaderText="AVAILABLE" />--%>
                                            <asp:BoundField DataField="BEGINTIME" HeaderText="BEGINTIME" />
                                          <asp:BoundField DataField="ENDTIME" HeaderText="ENDTIME" />
                                        </Columns>
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
 </asp:Content>
