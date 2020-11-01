<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="webPage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" href="StyleSheet1.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 98px;
        }
        .auto-style4 {
            position: absolute;
            top: 216px;
            left: 298px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                Welcome to the
                Login Page
            </h1>
            <h2>Type your username and password</h2>
        </div>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Username</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Username Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Password Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" ProviderName="<%$ ConnectionStrings:LoginDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [LoginTable]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Height="34px" Text="Clear" Width="95px" />
                    </td>
                </tr>
               
            </table>

        </div>

        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" CssClass="button" Height="30px" Text="Login"/>

    </form>
</body>
</html>
