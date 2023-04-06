using System;

namespace TrabajoPractico2 {
    public partial class WebForm1 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }
        /// <summary>
        /// Genera una tabla HTML a partir de los valores ingresados en los cuadros de texto.
        /// </summary>
        protected void generarTabla() {
            // Obtener los valores de los cuadros de texto.
            string primerProducto = TextBox1.Text;
            string segundoProducto = TextBox3.Text;

            int cantProducto1;
            int cantProducto2;
            if (!int.TryParse(TextBox2.Text, out cantProducto1) || !int.TryParse(TextBox4.Text, out cantProducto2)) {
                // El valor del cuadro de texto no se puede convertir a un número entero.
                Util.Alert("El valor ingresado no se puede convertir a un número entero. ", this);
                return;
            } 

            // Calcular la cantidad total de productos.
            int cantidadTotal = cantProducto1 + cantProducto2;

            // Crea una nueva tabla HTML.
            Element.Table table = new Element.Table();

            // Establece los encabezados de la tabla.
            table.SetHeaders("Producto", "Cantidad");

            // Establece las filas de la tabla.
            table.AddRow(primerProducto, cantProducto1);
            table.AddRow(segundoProducto, cantProducto2);
            table.AddRow("Total", cantidadTotal);

            // Muestra la tabla en el control Tabla.
            Tabla.Text = table.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e) {
            generarTabla();
        }
    }
}