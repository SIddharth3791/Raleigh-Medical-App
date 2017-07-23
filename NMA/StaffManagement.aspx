<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="StaffManagement.aspx.cs" Inherits="ClinicManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        &nbsp; &nbsp;
        <asp:Label ID="Label39" Text="MEDICAL STAFF MANAGEMENT" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Font-Underline="True"></asp:Label>
    
        <asp:Image ID="Image1" runat="server" Height="128px" ImageUrl="~/pics/8.jpg" Style="z-index: 101;
        left: 550px; position: absolute; top: 250px; width: 461px;" />
    <asp:Image ID="Image2" runat="server" Height="128px" ImageUrl="~/pics/12.jpg" Style="z-index: 102;
        left: 635px; position: absolute; top: 400px; width: 461px;" />
        <div id="mainContent" style="background-color:#efeeef;height:725px;width:1000px; margin:0 auto">
            &nbsp; &nbsp;
         <asp:Menu ID="Menu2" runat="server"
        Font-Names="Modern" ForeColor="#333333" Style="z-index: 104; left: 200px; position: absolute;
        top: 250px" Width="184px" Height="256px" Font-Bold="True">
             
        <Items>
            <asp:MenuItem Text="|   Add/Remove Staff Member" Value="New Item" NavigateUrl="~/Staff.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   Add/Remove Doctor" Value="New Item" NavigateUrl="~/Doctors.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   View Staff Member Per Job Type " Value="New Item" NavigateUrl="~/StaffJobType.aspx"></asp:MenuItem>
            <asp:MenuItem Text="|   Schedule Job Shift " Value="New Item" NavigateUrl="~/SchduleJobShift.aspx">
            </asp:MenuItem>
            
            
        </Items>
            </asp:Menu> 
    </div>
   </asp:Content>
