<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2A.aspx.cs" Inherits="TrabajoPractico2.Ejercicio2A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
