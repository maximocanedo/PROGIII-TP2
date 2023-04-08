<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TrabajoPractico2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <h3>Primer ejercicio</h3>
        </div>
        <div class="row">
            <label class="tb" for="tbNombreProducto1">
                <span>Nombre de producto: </span>
                <asp:TextBox ID="tbNombreProducto1" type="text" runat="server"></asp:TextBox>
            </label>
            <label class="tb" for="tbCantidadProducto1">
                <span>Cantidad: </span>
                <asp:TextBox ID="tbCantidadProducto1" type="number" runat="server"></asp:TextBox>
            </label>
        </div>
        <div class="row">
            <label class="tb" for="tbNombreProducto2">
                <span>Nombre de producto: </span>
                <asp:TextBox ID="tbNombreProducto2" runat="server"></asp:TextBox>
            </label>
            <label class="tb" for="tbCantidadProducto2">
                <span>Cantidad: </span>
                <asp:TextBox ID="tbCantidadProducto2" type="number" runat="server"></asp:TextBox>
            </label>
        </div>
        <div class="row">
            <asp:Button ID="btnGenerarTabla" runat="server" OnClick="Button1_Click" Text="Generar tabla" />
        </div>
        <div class="row">
            <asp:Label ID="Tabla" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
