<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Valid.aspx.cs" Inherits="asp_practice.Chap03.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator">Name is required.</asp:RequiredFieldValidator>
        </div>
        Weight<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>
            Birthdate<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        E-Mail<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <p>
            E-Mail (Confirmation)<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        Confrima<p>
            <asp:Button ID="Button1" runat="server" Text="Confirm" />
        </p>
    </form>
</body>
</html>
