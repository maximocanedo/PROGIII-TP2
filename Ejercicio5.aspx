<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio5.aspx.cs" Inherits="TrabajoPractico2.Ejercicio5" %>

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
      <a class="mdl-navigation__link" href="">Primer ejercicio</a>
      <a class="mdl-navigation__link" href="">Segundo ejercicio</a>
      <a class="mdl-navigation__link" href="">Tercer ejercicio</a>
      <a class="mdl-navigation__link" href="">Cuarto ejercicio</a>
    </nav>
  </div>
    <div aria-expanded="false" role="button" tabindex="0" class="mdl-layout__drawer-button"><i class="material-icons">menu</i></div>
  <main class="mdl-layout__content">
    <div class="page-content">
          <form id="form1" runat="server" class="main-container">
        <div class="row">
            <h3>Elija su configuración</h3>
        </div>
        <div class="row">
             <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label make-bigger">
                 <asp:DropDownList ID="ddlCantidadMemoria" CssClass="mdl-textfield__input" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="200">2 GB</asp:ListItem>
                    <asp:ListItem Value="375">4 GB</asp:ListItem>
                    <asp:ListItem Value="500">6 GB</asp:ListItem>
                </asp:DropDownList>
                <label class="mdl-textfield__label" for="ddlCantidadMemoria">Seleccione cantidad de memoria</label>
            </div>
         </div>
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
    </div>
  </main>
</div>
  
</body>
</html>
