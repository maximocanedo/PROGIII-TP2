<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio5.aspx.cs" Inherits="TrabajoPractico2.Ejercicio5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Título y descripción -->
    <title>Quinto ejercicio</title>
    <meta name="description" content="
        Quinto ejercicio del Trabajo Práctico N.º 2 para la materia Programación III. 
        Universidad Tecnológica Nacional, Facultad Regional General Pacheco. 
        Repositorio disponible aquí:  https://github.com/maximocanedo/PROGIII-TP2" />
    <!-- Integrantes -->
    <meta name="author" content="Máximo Canedo" />
    <meta name="author" content="Javier Torales" />
    <meta name="author" content="Jean Pierre Esquén" />
    <meta name="author" content="María Olivia Hanczyc" />
    <meta name="author" content="Ezequiel Martínez" />
    <!-- Otras metaetiquetas útiles -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Archivos usados -->
    <link rel="icon" href="utn.ico" type="image/x-icon" />
    <link href="main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="main-container">
        <h1>Elija su configuración</h1>
        <label for="ddlCantidadMemoria">Seleccione cantidad de memoria deseada:</label>
        <br />
        <asp:DropDownList ID="ddlCantidadMemoria" runat="server" AutoPostBack="True">
            <asp:ListItem Value="200">2 GB</asp:ListItem>
            <asp:ListItem Value="375">4 GB</asp:ListItem>
            <asp:ListItem Value="500">6 GB</asp:ListItem>
        </asp:DropDownList>
        <br />
        <label for="cblAccesorios">Seleccione accesorios:</label>
        <br />
        <asp:CheckBoxList ID="cblAccesorios" runat="server" AutoPostBack="True">
            <asp:ListItem Value="2000,50">Monitor LCD</asp:ListItem>
            <asp:ListItem Value="550,50">HD 500 GB</asp:ListItem>
            <asp:ListItem Value="1200">Grabador DVD</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="btnCalcularPrecio" runat="server" Text="Calcular Precio" OnClick="btnCalcularPrecio_Click" />
        <br />
        <asp:Label ID="lbResultado" runat="server"></asp:Label>
    </form>
</body>
</html>
