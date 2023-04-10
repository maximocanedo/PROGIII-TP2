<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TrabajoPractico2.Ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Título y descripción -->
    <title>Tercer ejercicio</title>
    <meta name="description" content="
        Tercer ejercicio del Trabajo Práctico N.º 2 para la materia Programación III. 
        Universidad Tecnológica Nacional, Facultad Regional General Pacheco. 
        Repositorio disponible aquí:  https://github.com/maximocanedo/PROGIII-TP2" />
    <!-- Integrantes -->
    <meta name="author" content="Jean Pierre Esquén" />
    <meta name="author" content="Javier Torales" />
    <meta name="author" content="Máximo Canedo" />
    <meta name="author" content="Ezequiel Martínez" />
    <meta name="author" content="Maria Olivia Hanczyc" />
    <!-- Otras metaetiquetas útiles -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Archivos usados -->
    <link rel="icon" href="utn.ico" type="image/x-icon" />
    <link href="main.css" rel="stylesheet" />
</head>
<body>
    <form id="container" runat="server">
        <div class="header">
            <h2>Tercer ejercicio</h2>
        </div>
        <div class="row">
            <div class="row">
                <asp:LinkButton ID="Rojo" runat="server" OnClick="Rojo_Click">Rojo</asp:LinkButton>
            </div>
            <div class="row">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Azul_Click">Azul</asp:LinkButton>
            </div>
            <div class="row">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton3_Click">Verde</asp:LinkButton>
            </div>
        </div>
        <div class="row rowBottom">
            <asp:Label ID="Label1" runat="server" Text="Texto coloreado"></asp:Label>
        </div>
    </form>
</body>
</html>
