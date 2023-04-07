using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2 {
    public partial class Ejercicio4a : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }
        private bool ValidarDatos(string user, string password) {
            return user == "claudio" && password == "casas";
        }
        protected void IniciarSesion() {
            string usuario = txtUser.Text;
            string clave = txtPass.Text;
            if(ValidarDatos(usuario, clave)) {
                Server.Transfer("Ejercicio4b.aspx");
            } else {
                Server.Transfer("Ejercicio4c.aspx");
            }

        }
        protected void btnEnviar_Click(object sender, EventArgs e) {
            IniciarSesion();
        }
    }
}