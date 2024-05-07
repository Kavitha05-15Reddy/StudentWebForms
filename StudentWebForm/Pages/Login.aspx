<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentWebForm.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 265px;
        }
        .auto-style3 {
            height: 172px;
        }
        .auto-style4 {
            width: 694px;
        }
        .auto-style5 {
            width: 572px;
        }
        .auto-style6 {
            width: 1207px;
        }
        .auto-style7 {
            width: 1207px;
            height: 90px;
        }
        .auto-style8 {
            width: 694px;
            height: 90px;
        }
        body{
            margin-top : 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5" style="border: thin solid #000000; margin: auto;">
            <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold; color: #CC0099; text-align: center; background-color: #00FF00; border-style: solid; border-width: thin">Student Login</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Student ID"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="400px"></asp:TextBox>
                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*Student ID is required             " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="400px"></asp:TextBox>
                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Name is required     " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" BackColor="#FF33CC" Font-Size="Medium" ForeColor="White" OnClick="Registration" Text="Registration" BorderColor="Black" Width="117px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" BackColor="#FF33CC" Font-Size="Medium" ForeColor="White" OnClick="Login_Button" Text="Login" BorderColor="Black" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button7" runat="server" BackColor="#FF33CC" Font-Size="Medium" ForeColor="White" OnClick="Logout" Text="Logout" BorderColor="Black" Width="100px" />
                    </td>
                </tr>
                </table>
      </div>
    </form>
</body>
</html>
