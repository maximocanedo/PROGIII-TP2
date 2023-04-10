using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2 {
    public partial class Ejercicio2b : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            string nombre = Session["Nombre"] != null ? Session["Nombre"].ToString() : "";
            string apellido = Session["Apellido"] != null ? Session["Apellido"].ToString() : "";
            string zona = Session["Ciudad"] != null ? Session["Ciudad"].ToString() : "";
            List<string> cblValores = Session["Temas"] as List<string>;
            string temas = (cblValores != null) ? string.Join("<br/>", cblValores) : "";

            Element.Table table = new Element.Table();
            table.SetHeaders("Propiedad", "Valor");
            table.SetColumnsAsNonNumeric(0, 1);
            table.AddRow("Nombre", nombre);
            table.AddRow("Apellido", apellido);
            table.AddRow("Zona", zona);
            table.AddRow("Temas", temas);
            TableContainer.Text = table.ToString();
        }
    }
}