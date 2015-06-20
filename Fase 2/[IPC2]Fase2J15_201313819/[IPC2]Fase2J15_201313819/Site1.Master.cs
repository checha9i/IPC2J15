using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace _IPC2_Fase2J15_201313819
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cliente = "Cliente";
             if(Session["Tipo"].ToString()!="Cliente"){
                 Response.Redirect("Default");
             }
        }
    }
}