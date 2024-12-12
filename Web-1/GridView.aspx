<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="Web_1.GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4" ForeColor="#3333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>

                    <asp:TemplateField HeaderText="PID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("PID") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="PName">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("PName") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="PCat">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("PCat") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="PPrice">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("PPrice") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                         <asp:Image ID="Image1" height="100" width="100" runat="server" ImageUrl='<%#Eval("PPic") %>'></asp:Image>
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
