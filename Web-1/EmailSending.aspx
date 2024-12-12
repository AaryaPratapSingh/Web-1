<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailSending.aspx.cs" Inherits="Web_1.SendingEmail" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Send Email</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f5f5f5;
            margin: 0;
        }

        .email-form-container {
            width: 100%;
            max-width: 600px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            border: 1px solid #e3e6f0;
        }

        .form-label {
            font-weight: 600;
            color: #333;
        }

        h2 {
            font-size: 1.8rem;
            margin-bottom: 20px;
            color: #007bff;
            text-align: center;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="email-form-container">
            <h2>Send Email</h2>
            <div class="form-group">
                <label class="form-label" for="TextBox1">To</label>
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Enter recipient email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label" for="TextBox2">Subject</label>
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Enter email subject"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label" for="TextBox3">Body</label>
                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="5" placeholder="Enter email body"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label" for="FileUpload1">Attachments</label>
                <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" CssClass="form-control" />
            </div>
            <div class="form-group text-center">
                <asp:Button ID="Button1" CssClass="btn btn-primary btn-block" runat="server" OnClick="Button1_Click" Text="Send Email" />
            </div>
        </div>
    </form>
</body>
</html>
