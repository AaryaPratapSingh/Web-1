<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="HRMS.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            font-size: 16px;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        .form-group input[type="email"],
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
            width: 48%;
            margin: 10px 1%;
            font-size: 16px;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Create New Account</h2>
            <div class="form-group">
                <label for="TextBox1">User Name</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox2">Email-ID</label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox3">Password</label>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SignUp" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SignIn" />
            </div>
        </div>
    </form>
</body>
</html>
