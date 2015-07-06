using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2J15_201313819
{
    public partial class cargafactura : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
            servicio.cambiodeestadopaquetedirec(TextBox1.Text);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Int32 num = Convert.ToInt32(e.CommandArgument);
                TextBox1.Text = GridView1.Rows[num].Cells[1].Text;



            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
            servicio.cambiodeestadopaquetedirecno(TextBox1.Text);
        }



    }
}