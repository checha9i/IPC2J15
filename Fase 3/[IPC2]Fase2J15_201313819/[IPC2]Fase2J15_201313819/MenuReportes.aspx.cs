using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2J15_201313819
{
    public partial class  MenuReportes : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


       

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Reportes.aspx");      
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Reporte2.aspx");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Reporte4.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Reporte3.aspx");
        }

    }
}