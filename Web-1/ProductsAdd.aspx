<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsAdd.aspx.cs" Inherits="Web_1.AddProducts" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <title>Add Products</title>
    <style>
        body {
            background-color: #f8f9fa; /* Light grey background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: #ffffff; /* White background for the form */
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input, select, button {
            width: 100%;
            margin-bottom: 15px;
        }

        button:hover {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="TextBox1">Product Name</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            
            <label for="DropDownList1">Product Category</label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:ListItem>Electronic</asp:ListItem>
                <asp:ListItem>Mobile</asp:ListItem>
                <asp:ListItem>Clothes</asp:ListItem>
                <asp:ListItem>Food</asp:ListItem>
            </asp:DropDownList>
            
            <label for="FileUpload1">Product Picture</label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
            
            <label for="TextBox2">Product Price</label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            
            
            
            <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
