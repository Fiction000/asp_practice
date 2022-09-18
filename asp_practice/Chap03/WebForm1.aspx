<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="asp_practice.Chap03.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
            <asp:FileUpload ID="btnUpload" runat="server" />
            <asp:Button ID="btnStartUpload" runat="server" Text="Button" OnClick="btnStartUpload_Click" />
        </div>
    </form>
</body>
</html>
