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
    <!-- No header, and the drawer stays open on larger screens (fixed drawer). -->
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer">
  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">TP N.º 2</span>
    <nav class="mdl-navigation">
      <a class="mdl-navigation__link" href="WebForm1.aspx">Primer ejercicio</a>
      <a class="mdl-navigation__link" href="Ejercicio2a.aspx">Segundo ejercicio</a>
      <a class="mdl-navigation__link" href="Ejercicio3.aspx">Tercer ejercicio</a>
      <a class="mdl-navigation__link" href="Ejercicio4.aspx">Cuarto ejercicio</a>
      <a class="mdl-navigation__link" href="Ejercicio5.aspx">Quinto ejercicio</a>
    </nav>
  </div>
    <div aria-expanded="false" role="button" tabindex="0" class="mdl-layout__drawer-button"><i class="material-icons">menu</i></div>
  <main class="mdl-layout__content">
    <div class="page-content">
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
    </div>
  </main>
</div>
</body>
</html>
