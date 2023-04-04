using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string primerProducto = TextBox1.Text;
            string segundoProducto = TextBox3.Text;
            int cantProducto1 = int.Parse(TextBox2.Text);
            int cantProduct2 = int.Parse(TextBox4.Text);

            string table = "<table border='1'><tr><td>Producto</td><td>Cantidad</td></tr>";
            table += "<tr><td>" + primerProducto + "</td><td>" + cantProducto1 + "</td></tr>";
            table += "<tr><td>" + segundoProducto + "</td><td>" + cantProduct2 + "</td></tr>";
            table += "<tr><td>Total</td><td>" + (cantProducto1 + cantProduct2) + "</td></tr>";
            table += "</table>";
            Tabla.Text = table;


        }
    }
}