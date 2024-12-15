<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="December_Login_1.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server">
        <Columns>
            <asp:TemplateField HeaderText="pid">
                <ItemTemplate>
                    <asp:Label ID="Lable1" runat="server" Text='<%#Eval("pid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="pic">
            <itemtemplate>
                <asp:Image ID="Image1" runat="server">ImageUrl='<%#Eval("pic") %>'> </asp:Image> 
            </itemtemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="pname">
                <itemtemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("pname") %>'></asp:Label>
                </itemtemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="pcat">
                <itemtemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("pcat") %>'></asp:Label>
                </itemtemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="price">
                <itemtemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                </itemtemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="qty">
                <itemtemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("qty") %>'></asp:Label>
                </itemtemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="total">
                <itemtemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("total") %>'></asp:Label>
                </itemtemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="date">
                <itemtemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                </itemtemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="date">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CommandName="Delete"Text="Remove" CssClass="btn btn-sm btn-danger" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
