<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
        &nbsp; &nbsp;
    <asp:Image ID="Image1" runat="server" Height="128px" ImageUrl="~/pics/6.jpg" Style="z-index: 101;
        left: 550px; position: absolute; top: 250px; width: 461px;" />
         &nbsp; &nbsp; &nbsp;
        
    <asp:Image ID="Image2" runat="server" Height="128px" ImageUrl="~/pics/14.jpg" Style="z-index: 102;
        left: 650px; position: absolute; top: 400px; width: 461px;" />
        <div id="mainContent" style="background-color:#efeeef;height:725px;width:1000px; margin:0 auto">
            &nbsp; &nbsp;
         <asp:Menu ID="Menu2" runat="server"
        Font-Names="Modern" ForeColor="#333333" Style="z-index: 104; left: 200px; position: absolute;
        top: 300px" Width="184px" Height="256px" Font-Bold="True" Font-Size="Larger">
             
             <Items>
                 <asp:MenuItem Text="|   PATIENT MANAGEMENT" Value="New Item" NavigateUrl="~/PatientManagement.aspx"></asp:MenuItem>
                 
                 <asp:MenuItem Text="|   IN-PATIENT MANAGEMENT" Value="New Item" NavigateUrl="~/InPatientManagement.aspx"></asp:MenuItem>
                 
                 <asp:MenuItem Text="|   MEDICAL STAFF MANAGEMENT" Value="New Item" NavigateUrl="~/StaffManagement.aspx"></asp:MenuItem>

             </Items>
            </asp:Menu> 
    </div>

</asp:Content>