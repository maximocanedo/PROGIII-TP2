<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4a.aspx.cs" Inherits="TrabajoPractico2.Ejercicio4a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Ejercicio5.css" rel="stylesheet" />
    <link rel="stylesheet" href="mdl/material.min.css">
    <script src="mdl/material.min.js"></script>
    <link href="main.css" rel="stylesheet" />
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
      <a class="mdl-navigation__link" href="Ejercicio4a.aspx">Cuarto ejercicio</a>
      <a class="mdl-navigation__link" href="Ejercicio5.aspx">Quinto ejercicio</a>
    </nav>
  </div>
    <div aria-expanded="false" role="button" tabindex="0" class="mdl-layout__drawer-button"><i class="material-icons">menu</i></div>
  <main class="mdl-layout__content">
    <div class="page-content">
        <form id="form1" runat="server" class="main-container">
            <div class="row">
                <h3>Iniciar sesión</h3>
            </div>
            <div class="row">
                <!-- TextBox en ASP.NET con estilo de MDL Lite -->
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <asp:TextBox ID="txtUser" CssClass="mdl-textfield__input" runat="server"></asp:TextBox>
                    <label class="mdl-textfield__label" for="txtUser">Usuario</label>
                </div>
            </div>
            <div class="row">
                <!-- TextBox en ASP.NET con estilo de MDL Lite -->
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <asp:TextBox ID="txtPass" CssClass="mdl-textfield__input" type="password" runat="server"></asp:TextBox>
                    <label class="mdl-textfield__label" for="txtPass">Contraseña</label>
                </div>
            </div>
            <div class="row">
                <asp:Button ID="btnEnviar" CssClass="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--raised mdl-button--colored" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
            </div>
        </form>
    </div>
  </main>
</div>
</body>
</html>
