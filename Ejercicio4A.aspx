<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4A.aspx.cs" Inherits="TrabajoPractico2.Ejercicio4A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="margin-left: 160px">
                <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblClave" runat="server" Text="Clave:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtClave" runat="server" EnableViewState="False" TextMode="Password"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnValidar" runat="server" OnClick="btnValidar_Click" Text="Validar" />
            </div>
        </div>
    </form>
</body>
</html>
