<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2B.aspx.cs" Inherits="TrabajoPractico2.Ejercicio2B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <h3>Resumen</h3>
        </div>
        <div class="row">
            <span>Nombre: <asp:Label ID="lNombre" runat="server"></asp:Label></span>
        </div>
        <div class="row">
            <span>Apellido: <asp:Label ID="lApellido" runat="server"></asp:Label></span>
        </div>
        <div class="row">
            <span>Zona: <asp:Label ID="lZona" runat="server"></asp:Label></span>
        </div>
        <div class="row">
            <span>Los temas elegidos son: </span>
        </div>
        <div class="row">
            <asp:Label ID="lTemas" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
