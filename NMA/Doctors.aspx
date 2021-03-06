﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Doctors.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;font-family:Calibri;font-size:medium">
          <tr>
              <td style="width:50%;">
                   <fieldset id="Fieldset1" runat="server" style="height:700px">
                          <legend style="color:orangered;text-align:left"><b>ADD/REMOVE</b></legend>
                       <table style="width:100%" border="0">
                             <tr style="height:60px;text-align:center;vertical-align:bottom">
                              <td colspan="3" style="text-align:center">
                                  <asp:Label ID="Label11" runat="server" Text="ADD DOCTOR" ForeColor="Black" Font-Bold="true"></asp:Label><hr />
                              </td>
                          </tr> 
                           <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label15" Text="Employment ID " runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label16" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtEmploymentnumber" runat="server"></asp:TextBox>    
                                </td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3" style="text-align:left">
                                  
                              </td>
                          </tr>
                           <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label27" Text="SSN" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label28" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtSSN" runat="server"></asp:TextBox>    
                                </td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3" style="text-align:left">
                                  
                              </td>
                          </tr>
                           <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label25" Text="CName" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label26" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtCName" runat="server"></asp:TextBox>    
                                </td>
                          </tr>
                            <tr style="height:10px">
                              <td colspan="3" style="text-align:left">
                                  
                              </td>
                          </tr>
                            <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label2" Text="Doctor Name" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label3" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtDoctorName" runat="server"></asp:TextBox>    
                                </td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                           <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label17" Text="Gender" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label18" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:DropDownList ID="drpGender" runat="server">
                                        <asp:ListItem Text="Male" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                                    </asp:DropDownList>    
                                </td>
                          </tr>
                            <tr style="height:10px">
                              <td colspan="3" style="text-align:left">
                                  
                              </td>
                          </tr>
                           <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label1" Text="Category" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label4" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:DropDownList ID="drpCategory" runat="server">
                                        <asp:ListItem Text="Physician" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Surgeon" Value="1"></asp:ListItem>
                                    </asp:DropDownList>    
                                </td>
                          </tr>
                          <tr style="height:10px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                            <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label5" Text="Specialized In" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label6" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtSpecialized" TextMode="MultiLine"  Rows="2" Columns="20" runat="server"></asp:TextBox>    
                                </td>
                          </tr>
                            <tr style="height:10px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                            <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label19" Text="Address" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label20" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtAddress" TextMode="MultiLine"  Rows="2" Columns="20" runat="server"></asp:TextBox>    
                                </td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                               </tr>
                           <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label29" Text="Phone" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label30" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>    
                                </td>
                          </tr>
                            <tr style="height:10px">
                              <td colspan="3" style="text-align:left">
                                  
                              </td>
                          </tr>
                           <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label7" Text="Salary($)" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label8" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>    
                                </td>
                          </tr>
                             <tr style="height:10px">
                              <td colspan="3" style="text-align:center">
                                  
                              </td>
                          </tr>
                           
                            <tr>
                                <td colspan="2"></td>
                                <td style="text-align:left"><asp:Button ID="btnAddDoctor" Text="ADD DOCTOR" runat="server" OnClick="btnAddDoctor_Click"></asp:Button></td>
                          </tr>
                            <tr style="height:10px">
                              <td colspan="3" style="text-align:left">
                                  
                              </td>
                          </tr>
                           <tr style="height:60px;text-align:center;vertical-align:bottom">
                              <td colspan="3" style="text-align:center">
                                  <asp:Label ID="Label12" runat="server" Text="Remove Doctor" Width="100%" BackColor="DeepSkyBlue" ForeColor="White" Font-Bold="true"></asp:Label><hr />
                              </td>
                          </tr>
                           <tr>
                                <td style="width:45%;text-align:right"><asp:Label ID="Label13" Text="Doctor Name" runat="server"></asp:Label></td>
                                <td style="width:5px;text-align:center"><asp:Label ID="Label14" Text=":" runat="server"></asp:Label></td>
                                <td style="text-align:left">
                                    <asp:DropDownList ID="drpDoctors" runat="server">
                                        
                                    </asp:DropDownList>    
                                </td>
                          </tr>
                           <tr style="height:10px">
                              <td colspan="3" style="text-align:left">
                                  
                              </td>
                          </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td style="text-align:left"><asp:Button ID="btnRemoveDoctor" Text="REMOVE" runat="server" OnClick="btnRemoveDoctor_Click"></asp:Button></td>
                          </tr>
                       </table>
                      </fieldset>
                </td>
          </tr>
        </table>
</asp:Content>

