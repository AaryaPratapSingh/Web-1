<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsAdd.aspx.cs" Inherits="DecBatchASP.ProductsAdd" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <title>Add Product</title>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #ffffff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #343a40;
        }
        .form-group label {
            font-weight: bold;
        }
        .btn-primary {
            width: 100%;
        }
        .form-container .alert {
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-container">
                <h2>Add Product</h2>
                <div class="form-group">
                    <label for="TextBox1">Product Name</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter product name"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="DropDownList1">Product Category</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem>Electronic</asp:ListItem>
                        <asp:ListItem>Food</asp:ListItem>
                        <asp:ListItem>Clothes</asp:ListItem>
                        <asp:ListItem>Toys</asp:ListItem>
                        <asp:ListItem>Beauty</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="FileUpload1">Product Image</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file" />
                </div>
                <div class="form-group">
                    <label for="TextBox2">Product Price</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter product price"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" CssClass="btn btn-primary" />
                <asp:Label ID="Label1" runat="server" CssClass="alert alert-info d-none mt-3" Text="Label"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
