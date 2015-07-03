using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
namespace _IPC2_Fase2J15_201313819
{
    public partial class ConsultarPaquete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Int32 num = Convert.ToInt32(e.CommandArgument);
                TextBox1.Text = GridView1.Rows[num].Cells[1].Text;
             

            }
        }
    }
}