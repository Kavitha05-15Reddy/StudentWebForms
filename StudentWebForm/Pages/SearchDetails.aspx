<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchDetails.aspx.cs" Inherits="StudentWebForm.Pages.SearchDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 76%;
        }
        .auto-style2 {
            width: 214px;
        }
        .auto-style5 {
            width: 99%;
            margin-right: 0px;
        }
        .auto-style6 {
            height: 40px;
        }
        .auto-style7 {
            height: 50px;
        }
        .auto-style9 {
            height: 217px;
        }
    </style>
</head>
<body style="width: 1746px; height: 576px">
    <form id="form1" runat="server">
        <div class="auto-style1"style="border: thin solid #000000; margin-left:50px">
            <h1 style="border-style: solid; border-width: thin; font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold; color: #808080; text-align: center; background-color: #00CCFF;">Student Search Details</h1>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="400px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Name is required     " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2"></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" BackColor="#999966" Font-Bold="True" Font-Size="X-Large" ForeColor="White" OnClick="Home" Text="Home" BorderColor="Black" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" BackColor="#999966" Font-Bold="True" Font-Size="X-Large" ForeColor="White" OnClick="Search" Text="Search" BorderColor="Black" ValidationGroup="reg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2"></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style9">
                        <asp:GridView ID="GridView1" runat="server" Height="208px" Width="1322px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" BorderColor="Black" Font-Size="Medium" ForeColor="#CCCCFF" Font-Bold="True" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" BorderColor="Black" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
         </div>
    </form>
</body>
</html>
