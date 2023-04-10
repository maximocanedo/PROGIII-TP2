<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4A.aspx.cs" Inherits="TrabajoPractico2.Ejercicio4A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Título y descripción -->
    <title>Cuarto ejercicio (Pág. A)</title>
    <meta name="description" content="
        Cuarto ejercicio (Página A) del Trabajo Práctico N.º 2 para la materia Programación III. 
        Universidad Tecnológica Nacional, Facultad Regional General Pacheco. 
        Repositorio disponible aquí:  https://github.com/maximocanedo/PROGIII-TP2" />
    <!-- Integrantes -->
    <meta name="author" content="María Olivia Hanczyc" />
    <meta name="author" content="Javier Torales" />
    <meta name="author" content="Máximo Canedo" />
    <meta name="author" content="Jean Pierre Esquén" />
    <meta name="author" content="Ezequiel Martínez" />
    <!-- Otras metaetiquetas útiles -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Archivos usados -->
    <link rel="icon" href="utn.ico" type="image/x-icon" />
    <link href="main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="topcontainer">
            <header>
                <h2>Ejercicio 4</h2>
            </header>
        </div>
        <div id="container">
            <div class="row">
                <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
            </div>
            <div class="row">
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <asp:Label ID="lblClave" runat="server" Text="Clave:"></asp:Label>
            </div>
            <div class="row">
                <asp:TextBox ID="txtClave" runat="server" EnableViewState="False" TextMode="Password"></asp:TextBox>
            </div>
            <div class="row">
                <asp:Button ID="btnValidar" runat="server" OnClick="btnValidar_Click" Text="Validar" />
            </div>
        </div>
    </form>
</body>
</html>
