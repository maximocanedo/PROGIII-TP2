using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2 {
    public partial class Ejercicio2A : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResumen_Click(object sender, EventArgs e)
        {
            List<string> valoresSeleccionados = new List<string>();
            foreach (ListItem item in cblTemas.Items)
            {
                if (item.Selected)
                {
                    valoresSeleccionados.Add(item.Value);
                }
            }
            Session["ValoresSeleccionados"] = valoresSeleccionados;

            Server.Transfer("Ejercicio2B.aspx", true);
        }
    }
}