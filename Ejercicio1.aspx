<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TrabajoPractico2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Título y descripción -->
    <title>Primer ejercicio</title>
    <meta name="description" content="
        Primer ejercicio del Trabajo Práctico N.º 2 para la materia Programación III. 
        Universidad Tecnológica Nacional, Facultad Regional General Pacheco. 
        Repositorio disponible aquí:  https://github.com/maximocanedo/PROGIII-TP2" />
    <!-- Integrantes -->
    <meta name="author" content="Javier Torales" />
    <meta name="author" content="Máximo Canedo" />
    <meta name="author" content="Ezequiel Martínez" />
    <meta name="author" content="Jean Pierre Esquén" />
    <meta name="author" content="Maria Olivia Hanczyc" />
    <!-- Otras metaetiquetas útiles -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Archivos usados -->
    <link rel="icon" href="utn.ico" type="image/x-icon" />
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
