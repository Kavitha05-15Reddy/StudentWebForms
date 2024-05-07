<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentWebForm.Pages.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1387px;
        }
        .auto-style2 {
            height: 37px;
            width: 1387px;
        }
        .auto-style3 {
            height: 31px;
            width: 1387px;
        }
        .auto-style4 {
            width: 1811px;
        }
        .auto-style5 {
            height: 37px;
            width: 1811px;
        }
        .auto-style6 {
            height: 31px;
            width: 1811px;
        }
        .auto-style7 {
            height: 56px;
        }
        .auto-style8 {
            width: 1811px;
            height: 52px;
        }
        .auto-style9 {
            width: 1387px;
            height: 52px;
        }
        .auto-style10 {
            width: 839px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style10" style="border: thin solid #000000; margin: auto;">
            <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold; color: #00FF00; text-align: center; background-color: #0000FF; border-style: solid; border-width: thin">Student Registration Form</h1>
            <table class="w-100" style="border-style: solid; border-width: thin; font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; color: #333333; background-color: #FFFFFF;">
                <tr>
                    <td class="auto-style8">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Student ID"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="400px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*Student ID is required             " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*Please Enter Integers" Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="^[1-9][0-9]*$" ValidationGroup="reg"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Name"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="400px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Name is required     " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Start with Capital Letter " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="^[A-Z][A-Za-z]*$" ValidationGroup="reg"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Image"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="I1" runat="server" Font-Size="XX-Small" GroupName="Img" />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/Img1.png" />
                        <asp:RadioButton ID="I2" runat="server" Font-Size="XX-Small" GroupName="Img"  />
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/Img2.png" />
                        <asp:RadioButton ID="I3" runat="server" Font-Size="XX-Small" GroupName="Img"  />
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Assets/Img3.png" />
                        <asp:RadioButton ID="I4" runat="server" Font-Size="XX-Small" GroupName="Img"  />
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Assets/img4.png" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Gender"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Medium" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="*Gender is required     " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Email"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="400px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*Email is required     " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*Inavalid Email format" Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\w+@\w+\.\w+" ValidationGroup="reg"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Mobile No"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="400px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*Mobile No is required     " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*Inavalid Mobile No" Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="[6-9]{1}[0-9]{9}" ValidationGroup="reg"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Address"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox5" runat="server"  Font-Size="Medium" Width="400px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*Address is required     " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Date Of Joining"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox6" runat="server" textmode="Date" Font-Size="Medium" Width="400px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="*Date Of Joining is required     " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="*Inavalid Date format" Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d{4}-\d{2}-\d{2}" ValidationGroup="reg"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="Branch"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="400px">
                            <asp:ListItem>Bsc</asp:ListItem>
                            <asp:ListItem>Bcom</asp:ListItem>
                            <asp:ListItem>Btech</asp:ListItem>
                            <asp:ListItem>MCA</asp:ListItem>
                            <asp:ListItem>MBA</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="*Branch is required     " Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" BackColor="Lime" Font-Size="Large" ForeColor="White" OnClick="Login" Text="Login" BorderColor="Black" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="Button6" runat="server" BackColor="Lime" Font-Size="Large" ForeColor="White" OnClick="Registration" Text="Registration" BorderColor="Black" Width="177px" ValidationGroup="reg" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button8" runat="server" BackColor="Lime" Font-Size="Large" ForeColor="White" OnClick="Get" Text="Get" BorderColor="Black" Width="122px" />
                        </td>
                </tr>
            </table>
         </div>
    </form>
</body>
</html>
