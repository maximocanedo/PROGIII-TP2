<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio5.aspx.cs" Inherits="TrabajoPractico2.Ejercicio5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Ejercicio5.css" rel="stylesheet" />
    <link rel="stylesheet" href="mdl/material.min.css">
    <script src="mdl/material.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="main-container">
        <h3>Elija su configuración</h3>
        <label for="ddlCantidadMemoria">
            <span>Seleccione cantidad de memoria deseada: </span>
            <br />
            <br />
            <asp:DropDownList ID="ddlCantidadMemoria" runat="server" AutoPostBack="True">
                <asp:ListItem Value="200">2 GB</asp:ListItem>
                <asp:ListItem Value="375">4 GB</asp:ListItem>
                <asp:ListItem Value="500">6 GB</asp:ListItem>
            </asp:DropDownList>
&nbsp;</label><br />
        <br />
        <label for="cblAccesorios">
            <span>Seleccione accesorios: </span>
            <br />
            <asp:CheckBoxList ID="cblAccesorios"  runat="server" AutoPostBack="True">
                <asp:ListItem Value="2000,50">Monitor LCD</asp:ListItem>
                <asp:ListItem Value="550,50">HD 500 GB</asp:ListItem>
                <asp:ListItem Value="1200">Grabador DVD</asp:ListItem>
            </asp:CheckBoxList>
&nbsp;</label>
        <br />
        <br />
        <asp:Button ID="btnCalcularPrecio" CssClass="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--raised mdl-button--colored" runat="server" Text="Calcular Precio" OnClick="btnCalcularPrecio_Click" />
        <br />
        <asp:Label ID="lbResultado" runat="server"></asp:Label>
    </form>
</body>
</html>
