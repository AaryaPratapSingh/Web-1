<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookSlot.aspx.cs" Inherits="InterviewSchedule.BookSlot" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Your Slot</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .booking-form-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #dee2e6;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-label {
            font-weight: bold;
        }
        .form-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .btn-primary {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container booking-form-container">
            <h2 class="form-header">Book a Slot</h2>
            <div class="form-group">
                <label class="form-label" for="DropDownList1">Days</label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>Wednesday</asp:ListItem>
                    <asp:ListItem>Thursday</asp:ListItem>
                    <asp:ListItem>Friday</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="form-label" for="DropDownList2">Timing</label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                    <asp:ListItem>09:00 - 10:00</asp:ListItem>
                    <asp:ListItem>10:00 - 11:00</asp:ListItem>
                    <asp:ListItem>11:00 - 12:00</asp:ListItem>
                    <asp:ListItem>12:00 - 01:00</asp:ListItem>
                    <asp:ListItem>01:00 - 02:00</asp:ListItem>
                    <asp:ListItem>02:00 - 03:00</asp:ListItem>
                    <asp:ListItem>03:00 - 04:00</asp:ListItem>
                    <asp:ListItem>04:00 - 05:00</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Book" />
            </div>
        </div>
    </form>
</body>
</html>
