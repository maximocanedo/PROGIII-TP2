using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2 {
    public partial class Ejercicio2a : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }
        private List<string> ObtenerTemasSeleccionados() {
            // Lógica para obtener los temas seleccionados del CheckBoxList
            return cblTemas.Items
                .Cast<ListItem>()
                .Where(item => item.Selected)
                .Select(item => item.Value)
                .ToList();
        }

        private void GuardarDatosEnSession(List<string> temas) {
            // Lógica para guardar los datos en Session
            Session["Nombre"] = txtNombre.Text;
            Session["Apellido"] = txtApellido.Text;
            Session["Ciudad"] = ddlCiudad.SelectedValue;
            Session["Temas"] = temas;
        }

        protected void btnVerResumen_Click(object sender, EventArgs e) {
            // Obtener los valores seleccionados del CheckBoxList
            List<string> temas = ObtenerTemasSeleccionados();
            // Guardar los valores seleccionados en Session
            GuardarDatosEnSession(temas);
            // Realizar la transferencia a la página Ejercicio2b.aspx
            Server.Transfer("Ejercicio2b.aspx");
        }
    }
}