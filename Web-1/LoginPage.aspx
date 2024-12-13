<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Web_1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px;
            text-align: center;
        }

        input[type="text"], input[type="password"], input[type="submit"], input[type="button"], asp\:TextBox {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button, asp\:Button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button, asp\:Button {
       background-color: #4CAF50;
       color: white;
       padding: 10px 20px;
       margin: 10px 0;
       border: none;
       border-radius: 5px;
       
        }

        button:hover, asp\:Button:hover {
            background-color: #45a049;
        }
        button:hover, asp\:Button:hover {
        background-color: #45a049;
        
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Login ID"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Pass"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />

        </div>
    </form>
</body>
</html>
