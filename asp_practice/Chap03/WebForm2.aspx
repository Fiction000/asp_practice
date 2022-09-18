<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="asp_practice.Chap03.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
       
        <p>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="https://wings.msn.to/image/wings.jpg" NavigateUrl="https://wings.msn.to">Learning place for server side</asp:HyperLink>
        <asp:Image ID="logo" runat="server" />
       
    </form>
</body>
</html>
