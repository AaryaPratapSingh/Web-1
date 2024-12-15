<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ProductsAdd.aspx.cs" Inherits="December_Login_1.ProductsAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Products Add
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    This is Products Add Page
    
    <div>
    <label for="TextBox1">Product Name</label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    
    <label for="DropDownList1">Product Category</label>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
        <asp:ListItem>Electronic</asp:ListItem>
        <asp:ListItem>Mobile</asp:ListItem>
        <asp:ListItem>Clothes</asp:ListItem>
        <asp:ListItem>Food</asp:ListItem>
        <asp:ListItem>Animals</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList>
    
    <label for="FileUpload1">Product Picture</label>
    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
    
    <label for="TextBox2">Product Price</label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
    
    
    
    <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="Button1_Click" />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</div>

</asp:Content>

    
