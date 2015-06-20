using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2J15_201313819
{
    public partial class _DefaultAdministrador   : Page
    {
        protected void Page_Load4(object sender, EventArgs e)
        {
            Session["UserName"]="";
            Session["Tipo"]="";

        }
    }
}