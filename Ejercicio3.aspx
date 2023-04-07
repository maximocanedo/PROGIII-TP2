<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TrabajoPractico2.Ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="Rojo" runat="server" OnClick="Rojo_Click">Rojo</asp:LinkButton>
            <br />
            <br />
        </div>
        <asp:LinkButton ID="Azul" runat="server" OnClick="Azul_Click">Azul</asp:LinkButton>
        <p>
            <asp:LinkButton ID="Verde" runat="server" OnClick="LinkButton3_Click">Verde</asp:LinkButton>
        </p>
        <asp:Label ID="Label1" runat="server" Text="Texto coloreado"></asp:Label>
    </form>
</body>
</html>
