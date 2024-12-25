<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OfferLetterPage.aspx.cs" Inherits="OfferLetter.OfferLetterPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Offer Letter Generator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
            background-color: #f7f7f7;
        }
        .form-container {
            max-width: 500px;
            margin: auto;
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-container input, button {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Generate Offer Letter</h2>
            Name:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            Email:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            Contact:
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
            Date of Joining:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            Salary:
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Send Offer Letter" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
