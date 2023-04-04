<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TrabajoPractico2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre del producto:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label2" runat="server" Text="Cantidad:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             <br />
             <br />
             <asp:Label ID="Label3" runat="server" Text="Ingrese el nombre del producto:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label4" runat="server" Text="Cantidad:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             <br />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generar tabla" />
             <br />
             <br />
             <asp:Label ID="Tabla" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
