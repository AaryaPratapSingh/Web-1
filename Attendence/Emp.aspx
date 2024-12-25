<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FetchProducts.aspx.cs" Inherits="MasterProject.FetchProducts" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fetch Products</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
