<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2A.aspx.cs" Inherits="TrabajoPractico2.Ejercicio2A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Título y descripción -->
    <title>Segundo ejercicio (Pág. A)</title>
    <meta name="description" content="
        Segundo ejercicio (Página A) del Trabajo Práctico N.º 2 para la materia Programación III. 
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
            <label class="tb">
                <span>Nombre: </span>
                <asp:TextBox ID="tbNombre" type="text" runat="server"></asp:TextBox>
            </label>
            <label class="tb">
                <span>Apellido: </span>
                <asp:TextBox ID="tbApellido" runat="server"></asp:TextBox>
            </label>
        </div>
        <div class="row">
            <label class="tb">
                <span>Ciudad: </span>
                <asp:DropDownList ID="ddlCiudades" runat="server">
                    <asp:ListItem Value="Zona norte">Gral. Pacheco</asp:ListItem>
                    <asp:ListItem Value="Zona oeste">San Miguel</asp:ListItem>
                    <asp:ListItem Value="Zona sur">Boedo</asp:ListItem>
                </asp:DropDownList>
            </label>
        </div>
        <div class="row">
            <label class="tb">
                <span>Temas: </span>
                <asp:CheckBoxList ID="cblTemas" CssClass="table-cbl" runat="server">
                    <asp:ListItem>Ciencias</asp:ListItem>
                    <asp:ListItem>Literatura</asp:ListItem>
                    <asp:ListItem>Historia</asp:ListItem>
                </asp:CheckBoxList>
            </label>
        </div>
        <div class="row">
            <asp:Button ID="btnResumen" runat="server" Text="Ver resumen" OnClick="btnResumen_Click" />
        </div>
    </form>
</body>
</html>
