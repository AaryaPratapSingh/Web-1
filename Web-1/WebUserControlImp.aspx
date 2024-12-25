<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlImp.aspx.cs" Inherits="Web_1.WebUserControlImp" %>
<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="a" TagName="b" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a:b runat="server"/>"
        </div>
        <p>
            UserName
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
        </p>
        <p>
    Email
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> 
</p>
    </form>
</body>
</html>
