<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="InterviewSchedule.Apply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Apply Page</title>
    <script>
        function handleStreamChange() {
            const streamDropdown = document.getElementById('<%= DropDownList1.ClientID %>');
            const otherInputs = document.querySelectorAll(".form-control");
            const selectedStream = streamDropdown.value;

            if (selectedStream === "Others") {
                // Disable all other inputs except the stream dropdown
                otherInputs.forEach(input => {
                    if (input !== streamDropdown) {
                        input.disabled = true;
                    }
                });
            } else {
                // Enable all inputs if stream is not "Others"
                otherInputs.forEach(input => input.disabled = false);
            }
        }

        function handleAreYouChange() {
            const areYouDropdown = document.getElementById('<%= DropDownList2.ClientID %>');
        const ctcInput = document.getElementById('<%= TextBox4.ClientID %>');
        const ectcInput = document.getElementById('<%= TextBox5.ClientID %>');
        const noticePeriodDropdown = document.getElementById('<%= DropDownList3.ClientID %>');
            const selectedOption = areYouDropdown.value;

            if (selectedOption === "Fresher") {
                // Disable CTC, ECTC, and Notice Period for freshers
                ctcInput.disabled = true;
                ectcInput.disabled = true;
                noticePeriodDropdown.disabled = true;

                // Clear their values
                ctcInput.value = "";
                ectcInput.value = "";
                noticePeriodDropdown.selectedIndex = 0;
            } else {
                // Enable CTC, ECTC, and Notice Period for experienced
                ctcInput.disabled = false;
                ectcInput.disabled = false;
                noticePeriodDropdown.disabled = false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 50%; margin: auto; text-align: left;">

            <label for="DropDownList1">Stream</label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="false" onchange="handleStreamChange()">
                <asp:ListItem>B.Sc(IT)</asp:ListItem>
                <asp:ListItem>B.Sc(CS)</asp:ListItem>
                <asp:ListItem>B.Tech</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>MCA</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
                <asp:ListItem>MBA(IT)</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <label for="DropDownList2">Are You</label>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="false" onchange="handleAreYouChange()">
                <asp:ListItem>Fresher</asp:ListItem>
                <asp:ListItem>Experience</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <label for="TextBox1">Name</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <br /><br />

            <label for="TextBox2">Contact No.</label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            <br /><br />

            <label for="TextBox3">Mail-id</label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
            <br /><br />

            <label for="TextBox4">CTC</label>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            <br /><br />

            <label for="TextBox5">ECTC</label>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            <br /><br />

            <label for="DropDownList3">Notice Period</label>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                <asp:ListItem>1 Month</asp:ListItem>
                <asp:ListItem>2 Month</asp:ListItem>
                <asp:ListItem>3 Month</asp:ListItem>
                <asp:ListItem>4 Month</asp:ListItem>
                <asp:ListItem>5 Month</asp:ListItem>
                <asp:ListItem>6 Month</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <label for="FileUpload1">Resume</label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"></asp:FileUpload>
            <br /><br />

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" CssClass="form-control" />
        </div>
    </form>
</body>
</html>
