<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLogin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
         <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/pics/3.jpg" Style="z-index: 101;
        left: 271px; position: absolute; top: 170px; width: 492px;" />
         <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/pics/2.jpg" Style="z-index: 102;
        left: 596px; position: absolute; top: 280px; width: 492px;" />
     <table style="width:100%" border="0">
    
         <tr>
             <td style="height:200px">
                 
             </td>
             <td  style="width:300px"></td>
             <td  style="width:300px"></td>

         </tr>
         <tr>
             <td style="width:300px">
                 

             </td>
             <td style="width:300px;height:250px">
                 <fieldset> 
                        <legend style="font-family:Calibri;font-size:large;color:dodgerblue"><b>Login</b></legend>
                        
                        <table border="0">
                            <tr>
                                <td style="width:30px"></td>                                
                                <td class="auto-style1"></td>
                                <td></td>
                                <td style="width:30px"></td>      
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Label  ID="Label1" runat="server" Text="Username" Font-Names="Calibri"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style1">
                                     <asp:Label ID="Label2"  runat="server" Text="Password" Font-Names="Calibri"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                    
                                <td style="height:25px", "width:30px">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Label" ForeColor="Red"></asp:Label>
                                </td>
                               
                            </tr>
                             <tr>
                                <td style="width:15px"></td>                                
                                <td class="auto-style1"></td>
                                <td>
                                    <asp:Button ID="btnLogin" Width="50%"  runat="server" text="LOGIN" BackColor="Gray" ForeColor="White"  Font-Bold="true" OnClick="btnLogin_Click"/>
                                 </td>
                                <td style="width:30px"></td>      
                            </tr>
                        </table>
                 </fieldset>

             </td>
             <td></td>

         </tr>
         <tr>
             <td>
         
             </td>
             <td></td>
             <td></td>

         </tr>


     </table>
    
</asp:Content>

