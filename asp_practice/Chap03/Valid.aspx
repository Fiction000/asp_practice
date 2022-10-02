<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Valid.aspx.cs" Inherits="asp_practice.Chap03.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vlidation Control</title>
    <link href="../site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1">Name is required.</asp:RequiredFieldValidator>
        </div>
        Weight<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator"></asp:RangeValidator>
        Kg weight should be 0-300<p>
            Birthdate<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            Please enter your birth date as date</p>
        E-Mail<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
        <p>
            E-Mail (Confirmation)<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        Confrima<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="TextBox4" ControlToValidate="TextBox5"></asp:CompareValidator>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click1" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
