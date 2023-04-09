using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Nombre;
            Nombre = Request.QueryString["msj"];
            lblMensaje.Text = "Bienvenido/a a mi página Sr./Sra. " + Nombre;
        }
    }
}