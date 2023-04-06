using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2  {
    public partial class Ejercicio2B : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Nombre;
            String Apellido;
            String Zona;


            Nombre = ((TextBox)PreviousPage.FindControl("tbNombre")).Text.Trim();
            Apellido = ((TextBox)PreviousPage.FindControl("tbApellido")).Text.Trim();
            Zona = ((DropDownList)PreviousPage.FindControl("ddlCiudades")).Text;

            if (Session["ValoresSeleccionados"] != null)
            {
                List<string> valoresSeleccionados = (List<string>)Session["ValoresSeleccionados"];
                foreach (string item in valoresSeleccionados)
                {
                    lTemas.Text += "<br/>" + item;
                }
            }

            lNombre.Text = Nombre;
            lApellido.Text = Apellido;
            lZona.Text = Zona;
        }
    }
}