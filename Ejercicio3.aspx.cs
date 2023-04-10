using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace TrabajoPractico2 {
    public partial class Ejercicio3 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }
        protected void setColor(Color c) {
            ColoredText.ForeColor = c;
        }
        protected void RedButton_Click(object sender, EventArgs e) {
            setColor(Color.Red);
        }
        protected void BlueButton_Click(object sender, EventArgs e) {
            setColor(Color.Blue);
        }
        protected void GreenButton_Click(object sender, EventArgs e) {
            setColor(Color.Green);
        }
    }
}