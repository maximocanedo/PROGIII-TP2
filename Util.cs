using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2 {
    public static class Util {

        public static void FilterNumbersOnControl(TextBox sender, EventArgs e) {
            // Obtener el texto actual del TextBox
            string texto = sender.Text;
            // Crear un nuevo string solo con caracteres numéricos
            string textoNumerico = new string(texto.Where(c => Char.IsDigit(c)).ToArray());
            // Establecer el nuevo texto en el TextBox
            sender.Text = textoNumerico;
        }


        /// <summary>
        /// Esta función se encarga de mostrar una alerta en el navegador con un mensaje específico. 
        /// La alerta se muestra mediante la ejecución de una función JavaScript que se registra en el cliente utilizando el ScriptManager de ASP.NET.
        /// </summary>
        /// <param name="message">El mensaje que se desea mostrar.</param>
        /// <param name="control">El control al cual asociar la alerta. </param>
        public static void Alert(string message, Control control) {
            ScriptManager.RegisterStartupScript(control, control.GetType(), "Alerta", $"alert('{message}');", true);
        }

        /// <summary>
        /// Comprueba si los valores dados como cadenas de texto pueden ser convertidos a números enteros.
        /// </summary>
        /// <param name="strings">Las cadenas de texto a comprobar</param>
        /// <returns>Verdadero si todas las cadenas de texto pueden ser convertidas a números enteros; de lo contrario, falso.</returns>
        public static bool ParseableAsInteger(params string[] strings) {
            bool res = true;
            foreach(string str in strings) {
                int des;
                if(!int.TryParse(str, out des)) {
                    res = false;
                }
            }
            return res;
        }
    }
}