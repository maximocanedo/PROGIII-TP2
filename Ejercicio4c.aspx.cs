using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2 {
    public partial class Ejercicio4c : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void BackButton_Click(object sender, EventArgs e) {
            Server.Transfer("Ejercicio4a.aspx");
        }
    }
}