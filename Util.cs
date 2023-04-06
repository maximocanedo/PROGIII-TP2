using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace TrabajoPractico2 {
    public static class Util {
        /// <summary>
        /// Esta función se encarga de mostrar una alerta en el navegador con un mensaje específico. 
        /// La alerta se muestra mediante la ejecución de una función JavaScript que se registra en el cliente utilizando el ScriptManager de ASP.NET.
        /// </summary>
        /// <param name="message">El mensaje que se desea mostrar.</param>
        /// <param name="control">El control al cual asociar la alerta. </param>
        public static void Alert(string message, Control control) {
            ScriptManager.RegisterStartupScript(control, control.GetType(), "Alerta", $"alert('{message}');", true);
        }

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