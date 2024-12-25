<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="OfferLetter.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Email<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            <br />
            <br />
            Password<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server"  Text="Login" OnClick="Button1_Click1" style="height: 29px" />

        </div>
    </form>
</body>
</html>
