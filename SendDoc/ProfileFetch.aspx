<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileFetch.aspx.cs" Inherits="SendDoc.ProfileFetch" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Fetch</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <style>
        .container {
            margin-top: 20px;
        }

        .gridview-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Uploaded Documents</h2>
            <div class="gridview-container">
               
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" ShowHeader="True">
                    <Columns>
                        <asp:BoundField DataField="DocName" HeaderText="Document Name" SortExpression="DocName" />
                        <asp:BoundField DataField="DocImage" HeaderText="Document Image" SortExpression="DocImage" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                
                                <asp:Button ID="btnView" runat="server" Text="View" CommandName="View" CommandArgument='<%# Eval("DocImage") %>' CssClass="btn btn-primary" OnClick="btnView_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                
                                <asp:Button ID="btnDownload" runat="server" Text="Download" CommandName="Download" CommandArgument='<%# Eval("DocImage") %>' CssClass="btn btn-success" OnClick="btnDownload_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
