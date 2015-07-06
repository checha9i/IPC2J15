using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2J15_201313819
{
    public partial class Reporte2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            paquetessucursal reporte = new paquetessucursal();
            CrystalReportViewer1.ReportSource = reporte;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/MenuReportes.aspx");
        }
    }
}