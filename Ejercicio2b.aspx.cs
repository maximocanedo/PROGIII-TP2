using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2 {
    public partial class Ejercicio2b : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            string nombre = ((TextBox)PreviousPage.FindControl("txtNombre")).Text;
            string apellido = ((TextBox)PreviousPage.FindControl("txtApellido")).Text;
            string zona = ((DropDownList)PreviousPage.FindControl("ddlCiudad")).SelectedValue;
            CheckBoxList cblValores = (CheckBoxList)PreviousPage.FindControl("cblTemas");
            string temas = "";
            if(cblValores != null) {
                foreach(ListItem item in cblValores.Items) {
                    if(item.Selected) {
                        temas += item.Text + "<br/>";
                    }
                }
            }
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