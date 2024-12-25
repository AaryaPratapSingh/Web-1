<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="Attendance.Attendance" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance Management</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Attendance</h2>
            <asp:Label ID="StatusLabel" runat="server" ForeColor="Red"></asp:Label>
            <br /><br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check In" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Check Out" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <br />
            <br />
            <asp:Label ID="RecordsLabel" runat="server" ForeColor="Blue"/>
        </div>
    </form>
</body>
</html>
