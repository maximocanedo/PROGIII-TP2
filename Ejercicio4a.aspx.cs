using System;

namespace TrabajoPractico2 {
    public partial class Ejercicio4a : System.Web.UI.Page {
        public const string USUARIO_VALIDO = "claudio";
        public const string CLAVE_VALIDA = "casas";
        protected void Page_Load(object sender, EventArgs e) {

        }
        public static bool ValidarDatos(object user, object password) {
            return (user != null && password != null) ? (
                    (string)user == Ejercicio4a.USUARIO_VALIDO
                    &&
                    (string)password == Ejercicio4a.CLAVE_VALIDA
                    ) : false;
        }
        protected void IniciarSesion() {
            string usuario = Server.HtmlEncode(txtUser.Text);
            string clave = Server.HtmlEncode(txtPass.Text);
            if (ValidarDatos(usuario, clave)) {
                Session["Usuario"] = (string)usuario;
                Session["Clave"] = (string)clave;
                Server.Transfer("Ejercicio4b.aspx");
            }
            else {
                Server.Transfer("Ejercicio4c.aspx");
            }

        }
        protected void btnEnviar_Click(object sender, EventArgs e) {
            IniciarSesion();
        }
    }
}