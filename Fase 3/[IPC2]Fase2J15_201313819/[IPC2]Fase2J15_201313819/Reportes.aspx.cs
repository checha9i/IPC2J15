using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2J15_201313819
{
    public partial class Reportes : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
          Reportpaquetes reporte = new Reportpaquetes();
            CrystalReportViewer1.ReportSource = reporte;
        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/MenuReportes.aspx");
        }

    }
}