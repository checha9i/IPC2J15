using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace _IPC2_Fase2J15_201313819
{
    public partial class Clientes : System.Web.UI.Page
    {
        public float comision33, pesolb33, impu;
        public string codigo;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtnombre.Text = Session["UserName"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            lbmensaje.Text = "Paquetes de Estados Unidos";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
         

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
        }

        protected void Calcular_Click(object sender, EventArgs e)
        {
        }

        protected void ddImpuesto_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbmostrarproducto.Visible = true;
            GridView3.Visible = true;
            codigo = GridView1.SelectedRow.Cells[1].Text;
            lbmostrarproducto.Text = "Praquete elegido: " + codigo;

        }
    }
}