<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp.aspx.cs" Inherits="Web_1.Emp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            em<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            sal<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
        </div>
    </form>
</body>
</html>
