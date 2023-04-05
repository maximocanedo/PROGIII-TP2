using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2 {
    public partial class Ejercicio5 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }
        protected float getCantidadDeMemoriaPrice() {
            float cantidadDeMemoriaParsed = 0;
            if (float.TryParse(ddlCantidadMemoria.SelectedValue, out cantidadDeMemoriaParsed)) {
                return cantidadDeMemoriaParsed;
            }
            return cantidadDeMemoriaParsed;
        }
        protected float getAccesoriosPrice() {
            float accesorios = 0;
            foreach (ListItem item in cblAccesorios.Items) {
                if (item.Selected) {
                    float accesorioParsed;
                    if (float.TryParse(item.Value, out accesorioParsed)) {
                        accesorios += accesorioParsed;
                    }
                }
            }
            return accesorios;
        }
        protected void btnCalcularPrecio_Click(object sender, EventArgs e) {
            float cm = getCantidadDeMemoriaPrice();
            float ac = getAccesoriosPrice();
            float precioFinal = cm + ac;
            lbResultado.Text = "<br />El precio final es de <b>$" + precioFinal + "</b>.";
        }
    }
}