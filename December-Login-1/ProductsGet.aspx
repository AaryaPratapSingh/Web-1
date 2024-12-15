<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ProductsGet.aspx.cs" Inherits="December_Login_1.ProductsGet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Products Get
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    This Is Your Products
    <div class="container mt-5">
    <h2 class="text-center mb-4">Product List</h2>
    <div class="card-container">
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
                      RepeatLayout="Flow" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src='<%# Eval("PPic") %>' alt="Product Image">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("PName") %></h5>
                        <p class="card-text">Category: <%# Eval("PCat") %></p>
                        <p class="card-text">Price: $<%# Eval("PPrice") %></p>

                    <p class="list-group-item">
                        Product Qty : <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    </p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
</asp:Content>
