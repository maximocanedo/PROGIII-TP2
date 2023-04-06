<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TrabajoPractico2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="mdl/material.min.css" />
    <script src="mdl/material.min.js"></script>
    <link rel="stylesheet" href="main.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <h3>Primer Ejercicio</h3>
        </div>
        <div class="row">
            <!-- TextBox en ASP.NET con estilo de MDL Lite -->
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <asp:TextBox ID="TextBox1" CssClass="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="txtMiTextBox">Nombre del producto</label>
            </div>
            <!-- TextBox en ASP.NET con estilo de MDL Lite -->
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <asp:TextBox ID="TextBox2" CssClass="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="txtMiTextBox">Cantidad</label>
            </div>
            </div>
        <div class="row">
            <!-- TextBox en ASP.NET con estilo de MDL Lite -->
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <asp:TextBox ID="TextBox3" CssClass="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="txtMiTextBox">Nombre del producto</label>
            </div>
            <!-- TextBox en ASP.NET con estilo de MDL Lite -->
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <asp:TextBox ID="TextBox4" CssClass="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="txtMiTextBox">Cantidad</label>
            </div>
            </div>
        <div class="row">
             <asp:Button ID="Button1" CssClass="mdl-button mdl-js-button mdl-button--colored mdl-button--raised mdl-js-ripple-effect" runat="server" OnClick="Button1_Click" Text="Generar tabla" />
             </div>
             <asp:Label CssClass="row" ID="Tabla" runat="server"></asp:Label>
    </form>
</body>
</html>
