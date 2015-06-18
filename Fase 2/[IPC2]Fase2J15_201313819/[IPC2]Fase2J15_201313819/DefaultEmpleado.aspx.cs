using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
namespace _IPC2_Fase2J15_201313819
{
    public partial class _Default : Page
    {
        protected void Page_Load3(object sender, EventArgs e)
        {

            string tipo =Session["Tipo"].ToString();
            if (tipo != "Empleado")
            {
                Response.Redirect("~/Default");
            }
        }
    }
}