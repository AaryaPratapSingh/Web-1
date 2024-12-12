<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsGet.aspx.cs" Inherits="Web_1.FetchProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
          crossorigin="anonymous">
    <title>Product List</title>
    <style>
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .card {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2 class="text-center mb-4">Product List</h2>
            <div class="card-container">
                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
                              RepeatLayout="Flow">
                    <ItemTemplate>
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src='<%# Eval("PPic") %>' alt="Product Image">
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("PName") %></h5>
                                <p class="card-text">Category: <%# Eval("PCat") %></p>
                                <p class="card-text">Price: $<%# Eval("PPrice") %></p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </form>
</body>
</html>
