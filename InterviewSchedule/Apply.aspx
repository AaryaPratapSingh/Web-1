<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="InterviewSchedule.Apply" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Apply Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        form {
            width: 50%;
            margin: auto;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
        }

        h1 {
            text-align: center;
            color: #333333;
            font-size: 24px;
        }

        label {
            font-size: 14px;
            color: #555555;
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 14px;
            box-sizing: border-box;
        }

        .form-control:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            border-radius: 4px;
            width: 100%;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .container {
            margin: 20px 0;
        }
    </style>
    <script>
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Job Application Form</h1>
        <div class="container">
            <label for="DropDownList1">Stream</label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="false" CssClass="form-control" onchange="handleStreamChange()">
                <asp:ListItem>B.Sc(IT)</asp:ListItem>
                <asp:ListItem>B.Sc(CS)</asp:ListItem>
                <asp:ListItem>B.Tech</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>MCA</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
                <asp:ListItem>MBA(IT)</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>

            <label for="DropDownList2">Are You</label>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="false" CssClass="form-control" onchange="handleAreYouChange()">
                <asp:ListItem>Fresher</asp:ListItem>
                <asp:ListItem>Experience</asp:ListItem>
            </asp:DropDownList>

            <label for="TextBox1">Name</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

            <label for="TextBox2">Contact No.</label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>

            <label for="TextBox3">Mail-id</label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>

            <label for="TextBox4">CTC</label>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>

            <label for="TextBox5">ECTC</label>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>

            <label for="DropDownList3">Notice Period</label>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                <asp:ListItem>1 Month</asp:ListItem>
                <asp:ListItem>2 Month</asp:ListItem>
                <asp:ListItem>3 Month</asp:ListItem>
                <asp:ListItem>4 Month</asp:ListItem>
                <asp:ListItem>5 Month</asp:ListItem>
                <asp:ListItem>6 Month</asp:ListItem>
            </asp:DropDownList>

            <label for="FileUpload1">Resume</label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"></asp:FileUpload>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="button" />
        </div>
    </form>
</body>
</html>
