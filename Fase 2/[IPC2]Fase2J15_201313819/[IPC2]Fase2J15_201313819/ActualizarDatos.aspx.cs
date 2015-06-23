using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace _IPC2_Fase2J15_201313819
{
    public partial class ActualizarDatos : System.Web.UI.Page
    {        servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox1.Text = Session["IDcliente"].ToString();
        }
    }
}