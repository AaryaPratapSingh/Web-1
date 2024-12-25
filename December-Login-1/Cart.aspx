<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="DecBatchMasterPage.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="PID">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Pic") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Pic">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server"  IamgeUrl='<%#Eval("Pic") %>'/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="pName">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("Pname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Category">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("pcat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("qty") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("total") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
        <asp:Label ID="Label7" runat="server" Text='<%#Eval("dt") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

            
            <asp:TemplateField HeaderText="Remove">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="Remove" CssClass="btn btn-sm btn-danger" />
    </ItemTemplate>
</asp:TemplateField>
            
        </Columns>

    </asp:GridView>
    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="Button2" runat="server" Text="Button" />
</asp:Content>