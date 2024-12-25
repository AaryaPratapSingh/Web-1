<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiViewControl.aspx.cs" Inherits="Web_1.MultiViewControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    Name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    Email<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    SSC%<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    HSC%<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Previous" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Next" />
                </asp:View>
                <asp:View ID="View3" runat="server">
                    City<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Thane</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>MiraRoad</asp:ListItem>
                        <asp:ListItem>Navi Mumbai</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    PinCode<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Previous" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Next" />
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Submit" />
                </asp:View>
            </asp:MultiView>

        </div>
    </form>
</body>
</html>
