<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="PatientManagement.aspx.cs" Inherits="PatientManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        &nbsp; &nbsp;
        <asp:Label ID="Label39" Text="PATIENT MANAGEMENT" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Font-Underline="True"></asp:Label>
    
        <asp:Image ID="Image1" runat="server" Height="128px" ImageUrl="~/pics/1.jpg" Style="z-index: 101;
        left: 550px; position: absolute; top: 250px; width: 461px;" />
    <asp:Image ID="Image2" runat="server" Height="128px" ImageUrl="~/pics/5.jpg" Style="z-index: 102;
        left: 635px; position: absolute; top: 400px; width: 461px;" />
        <div id="mainContent" style="background-color:#efeeef;height:725px;width:1000px; margin:0 auto">
            &nbsp; &nbsp;
         <asp:Menu ID="Menu2" runat="server"
        Font-Names="Modern" ForeColor="#333333" Style="z-index: 104; left: 200px; position: absolute;
        top: 250px" Width="184px" Height="256px" Font-Bold="True">
             
        <Items>
            <asp:MenuItem Text="|   Insert A New Patient" Value="New Item" NavigateUrl="~/AddPatient.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   View Patient Information" Value="New Item" NavigateUrl="~/ViewPatient.aspx"></asp:MenuItem>
            <asp:MenuItem Text="|   Schedule An Appointment with a Doctor" Value="New Item" NavigateUrl="~/BookDoctor.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   Check Previous Diagnosis and Illness" Value="|   DischargeSummary" NavigateUrl="~/CheckDiagnosesillness.aspx"></asp:MenuItem>
            <asp:MenuItem Text="|   View scheduled per doctor and per day" Value="|   Reception" NavigateUrl="~/Scheduleperday.aspx"></asp:MenuItem>
            
        </Items>
            </asp:Menu> 
    </div>
   
</asp:Content>