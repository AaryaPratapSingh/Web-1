<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="Web_1.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .signup-form-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f8f9fa;
            border: 1px solid #dee2e6;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container signup-form-container">
            <h2 class="text-center mb-4">Sign Up</h2>

            <div class="form-group">
                <label class="form-label" for="TextBox5">Name</label>
                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Enter your name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label class="form-label" for="TextBox6">Age</label>
                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Enter your age"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Age must be between 18 to 30" ForeColor="Red" MaximumValue="30" MinimumValue="18"></asp:RangeValidator>
            </div>

            <div class="form-group">
                <label class="form-label" for="TextBox7">Email</label>
                <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Enter your email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label class="form-label" for="TextBox8">Password</label>
                <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="First letter should be capital" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </div>

            <div class="form-group">
                <label class="form-label" for="TextBox9">Confirm Password</label>
                <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Confirm your password" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
            </div>

            <div class="form-group text-center">
                <asp:Button ID="Button1" CssClass="btn btn-primary btn-block" runat="server" OnClick="Button1_Click" Text="Sign Up" />
            </div>

            <div class="form-group text-center">
                <asp:Button ID="Button2" CssClass="btn btn-secondary btn-block" runat="server" OnClick="Button2_Click" Text="Login" />
            </div>
        </div>
    </form>
</body>
</html>
