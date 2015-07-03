using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2J15_201313819
{
    public partial class Site3 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Tipo"].ToString() != "Director")
            {
                Response.Redirect("Default");
            }
        }
    }
}