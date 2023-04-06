<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2A.aspx.cs" Inherits="TrabajoPractico2.Ejercicio2A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre&nbsp; :&nbsp;
            <asp:TextBox ID="tbNombre" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apellido&nbsp; :&nbsp;
            <asp:TextBox ID="tbApellido" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ciudad&nbsp; :&nbsp;
            <asp:DropDownList ID="ddlCiudades" runat="server">
                <asp:ListItem Value="Zona norte">Gral. Pacheco</asp:ListItem>
                <asp:ListItem Value="Zona oeste">San Miguel</asp:ListItem>
                <asp:ListItem Value="Zona sur">Boedo</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Temas :<asp:CheckBoxList ID="cblTemas" runat="server">
                <asp:ListItem>Ciencias</asp:ListItem>
                <asp:ListItem>Literatura</asp:ListItem>
                <asp:ListItem>Historia</asp:ListItem>
            </asp:CheckBoxList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnResumen" runat="server" Text="Ver resumen" OnClick="btnResumen_Click" />
        </div>
    </form>
</body>
</html>
