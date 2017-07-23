<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="InPatientManagement.aspx.cs" Inherits="InPatientManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        &nbsp; &nbsp;
        <asp:Label ID="Label39" Text="IN-PATIENT MANAGEMENT" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Font-Underline="True"></asp:Label>
    
        <asp:Image ID="Image1" runat="server" Height="128px" ImageUrl="~/pics/10.jpg" Style="z-index: 101;
        left: 550px; position: absolute; top: 250px; width: 461px;" />
    <asp:Image ID="Image2" runat="server" Height="128px" ImageUrl="~/pics/11.jpg" Style="z-index: 102;
        left: 635px; position: absolute; top: 400px; width: 461px;" />
        <div id="mainContent" style="background-color:#efeeef;height:725px;width:1000px; margin:0 auto">
            &nbsp; &nbsp;
         <asp:Menu ID="Menu2" runat="server"
        Font-Names="Modern" ForeColor="#333333" Style="z-index: 104; left: 200px; position: absolute;
        top: 250px" Width="184px" Height="256px" Font-Bold="True">
             
        <Items>
            <asp:MenuItem Text="|   Check For Available Room/Bed" Value="New Item" NavigateUrl="~/Accomodation.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   Assign/remove a patient to a room/bed " Value="New Item" NavigateUrl="~/AssignRemoveRoomBed.aspx"></asp:MenuItem>
            <asp:MenuItem Text="|   Assign/remove a doctor/nurse to a patient " Value="New Item" NavigateUrl="~/AssignRemoveRoomBed.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   Book Surgery" Value="|   DischargeSummary" NavigateUrl="~/BookSurgery.aspx"></asp:MenuItem>
            <asp:MenuItem Text="|   View scheduled surgery per surgeon per day" Value="|   Reception" NavigateUrl="~/RoomSurgeryDoctor.aspx"></asp:MenuItem>
            <asp:MenuItem Text="|   View scheduled surgery per patient" Value="|   Reception" NavigateUrl="~/ScheduledSurgeryPatient.aspx"></asp:MenuItem>
        </Items>
            </asp:Menu> 
    </div>
   </asp:Content>
