using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Text;
using System.Text.RegularExpressions;

namespace TrabajoPractico2 {
    public partial class Ejercicio4b : System.Web.UI.Page {
        public static string FormatearNombre(string nombre) {
            // Eliminar espacios en blanco y caracteres no alfabéticos
            string stringLimpio = Regex.Replace(nombre, @"[^a-zA-ZáéíóúÁÉÍÓÚñÑ]", string.Empty);
            // Convertir a título (primera letra en mayúscula y las demás en minúscula)
            TextInfo textInfo = new CultureInfo("es-ES", false).TextInfo;
            string nombreFinal = textInfo.ToTitleCase(stringLimpio.ToLower());
            return nombreFinal;
        }
        private bool VerificarDatos() {
            return Ejercicio4a.ValidarDatos(Session["Usuario"], Session["Clave"]);
        }
        protected void Page_Load(object sender, EventArgs e) {
            if (VerificarDatos()) {
                string nombre = (string)Session["Usuario"];
                nombre = FormatearNombre(nombre);
                WelcomeLabel.Text = "¡Bienvenido a mi página Sr. " + nombre + '!';
            } else {
                Server.Transfer("Ejercicio4c.aspx");
            }
        }
        protected void BackButton_Click(object sender, EventArgs e) {
            Server.Transfer("Ejercicio4a.aspx");
        }
    }
}