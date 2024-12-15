<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplyLeave.aspx.cs" Inherits="LeaveApplication.ApplyLeave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            From<asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            To&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            Reason <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Apply" />

        </div>
    </form>
</body>
</html>
