<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4A.aspx.cs" Inherits="TrabajoPractico2.Ejercicio4A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
