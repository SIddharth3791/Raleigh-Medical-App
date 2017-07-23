<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StaffJobType.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width:100%" border="0">
        <tr>
            <td>
                <fieldset id="Fieldset1" runat="server" style="height:700px">
                    <legend style="color:orangered;text-align:left"><b>STAFF MEMBER AS PER JOB TYPE</b></legend>
                        <table style="width:100%" border="0">
                            <tr style="height:100px">
                                <td></td>
                            </tr>
                            <tr>
                                <%--<td style="width:20%"></td>--%>
                                <td style="text-align:center; width: 100%">

                                    <asp:GridView ID ="grdStaffJobType" runat ="server" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="Small" Width="100%">
                                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                      <EditRowStyle BackColor="#999999" />
                                      <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                      <HeaderStyle BackColor="DodgerBlue" Font-Bold="True" ForeColor="White" Font-Size="Medium" Font-Names="Calibri" />
                                      <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                      <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Size="Medium" Font-Names="Calibri"/>
                                        <Columns>
                                           <%-- <asp:BoundField DataField="ID" HeaderText="ID" Visible="True" />--%>
                                            <asp:BoundField DataField="NAME" HeaderText="NAME" />
                                            <asp:BoundField DataField="GENDER" HeaderText="GENDER" />
                                            <asp:BoundField DataField="SPECIALITY" HeaderText="SPECIALITY" />                                           
                                            <asp:BoundField DataField="CATEGORY" HeaderText="CATEGORY" />                                           
                                           <asp:BoundField DataField="JOBTYPE" HeaderText="JOBTYPE" />  
                                        </Columns>
                                      <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                      <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                      <SortedAscendingHeaderStyle BackColor="DodgerBlue"/>
                                      <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                      <SortedDescendingHeaderStyle BackColor="DodgerBlue" />
                                  </asp:GridView>
                                </td>

                            </tr>
                        </table>

                </fieldset>
            </td>
        </tr>

    </table>
</asp:Content>

