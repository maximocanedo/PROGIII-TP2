using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico2
{
    public partial class Ejercicio3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void Rojo_Click(object sender, EventArgs e)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
        }

        protected void Azul_Click(object sender, EventArgs e)
        {
            Label1.ForeColor = System.Drawing.Color.Blue;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Label1.ForeColor = System.Drawing.Color.Green;
        }
    }
}