<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="HRMS.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <style>
        /* Global Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        h2 {
            color: #333333;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            font-size: 16px;
            color: #333;
            margin-bottom: 5px;
            display: block;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .form-group input[type="password"] {
            font-size: 18px;
        }

        .form-group button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            margin-top: 10px;
        }

        .form-group button:hover {
            background-color: #0056b3;
        }

        .form-group a {
            display: block;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
        }

        .form-group a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Welcome Back</h2>
        
        <div class="form-group">
            <label for="TextBox1">Email-ID</label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your email"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="TextBox2">Password</label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" />
        </div>

        <div class="form-group">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Don't have an account? Sign Up</asp:HyperLink>
        </div>
    </form>
</body>
</html>
