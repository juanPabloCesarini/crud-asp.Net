using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace crudConClase
{
    public partial class altas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            nombre.Text = " ";
            apellido.Text = " ";
            mail.Text = " ";
            clave.Text = " ";
            nombre.Focus();
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Usuario u = new Usuario();
            Transacciones t = new Transacciones();
            u.nombre = nombre.Text;
            u.apellido = apellido.Text;
            u.mail = mail.Text;
            u.clave = clave.Text;
            t.insertar(u);
            nombre.Text = " ";
            apellido.Text = " ";
            mail.Text = " ";
            clave.Text = " ";
            nombre.Focus();
            lblResultado.Text = "ingresado";
        }

        
    }
}