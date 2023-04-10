<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2B.aspx.cs" Inherits="TrabajoPractico2.Ejercicio2B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Título y descripción -->
    <title>Segundo ejercicio (Pág. B)</title>
    <meta name="description" content="
        Segundo ejercicio (Página B) del Trabajo Práctico N.º 2 para la materia Programación III. 
        Universidad Tecnológica Nacional, Facultad Regional General Pacheco. 
        Repositorio disponible aquí:  https://github.com/maximocanedo/PROGIII-TP2" />
    <!-- Integrantes -->
    <meta name="author" content="Ezequiel Martínez" />
    <meta name="author" content="Javier Torales" />
    <meta name="author" content="Máximo Canedo" />
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
