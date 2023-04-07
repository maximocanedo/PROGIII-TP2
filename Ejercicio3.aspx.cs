using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2 {
    public partial class Ejercicio3 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }
        protected void RedButton_Click(object sender, EventArgs e) {
            ColoredText.ForeColor = System.Drawing.Color.IndianRed;
        }
        protected void BlueButton_Click(object sender, EventArgs e) {
            ColoredText.ForeColor = System.Drawing.Color.Indigo;
        }
        protected void GreenButton_Click(object sender, EventArgs e) {
            ColoredText.ForeColor = System.Drawing.Color.ForestGreen;
        }
    }
}