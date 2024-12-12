<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailOTPVerify.aspx.cs" Inherits="Web_1.OTPVerify" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OTP Verification</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }

        .container h1 {
            font-size: 20px;
            margin-bottom: 20px;
            color: #333;
        }

        .container input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .container button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>OTP Verification</h1>
            <label for="TextBox1">OTP:</label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter OTP"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send OTP" />
            <br />
            <label for="TextBox2">Verify OTP:</label>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter OTP to verify"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Verify" />
        </div>
    </form>
</body>
</html>