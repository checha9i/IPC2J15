using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2J15_201313819
{
    public partial class Reporte4 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            empleadosucursal reporte = new empleadosucursal();
            CrystalReportViewer1.ReportSource = reporte;
            
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/MenuReportes.aspx");
        }
    }
}