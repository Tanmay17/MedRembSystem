<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server">
    <title>Medical Reimbursement</title>
    <style type="text/css">
        .auto-style1 {
            width: 212px;
        }
    </style>
</head>
<link rel="stylesheet" type="text/css" href="Login.css">
<body>
    <form id="form1" runat="server">
        <center><h1>Medical Reimbursement System</h1></center>
        <table frame="border" cellspacing="12" style="height: 167px; width: 385px">
            <tr><td colspan="2"><center><b>LOGIN</b></center></td></tr>
            <tr><td>ID</td><td class="auto-style1"><asp:TextBox ID="TextBox_loginID" runat="server" Width="168px" Font-Names="Calibri"></asp:TextBox></td></tr>
            <tr><td>PASSWORD</td><td class="auto-style1"><asp:TextBox ID="TextBox_loginPass" runat="server" TextMode="Password" Width="164px" Font-Names="Calibri"></asp:TextBox></td></tr>
            <tr><td>&nbsp;</td><td class="auto-style1"><asp:Button ID="Button1" runat="server" Text="LogIn" Width="109px" OnClick="Button1_Click" /></td></tr>
            <tr><td>&nbsp;</td><td>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                </td></tr>
        </table>
    </form>
</body>
</html>
