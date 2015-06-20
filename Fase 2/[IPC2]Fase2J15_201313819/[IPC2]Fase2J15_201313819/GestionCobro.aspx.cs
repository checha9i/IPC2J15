using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace _IPC2_Fase2J15_201313819
{
    public partial class GestionCobro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Nombre, Valor;
            Nombre = TextBox1.Text;
            Valor = TextBox2.Text;
            string cero="0";
            servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
            if (servicio.Update_Impuesto(Nombre,cero))
            {
                MessageBox.Show("Inhabilitado");
            }
            else { MessageBox.Show("Error"); }
        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="Select"){
                Int32 num = Convert.ToInt32(e.CommandArgument);
            TextBox1.Text=GridView3.Rows[num].Cells[2].Text;
                TextBox3.Text   =GridView3.Rows[num].Cells[3].Text;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Nombre, Valor;
            Nombre = TextBox2.Text;
            Valor = TextBox4.Text;
            string cero = "0";
            servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
            if (servicio.Update_Comision(Nombre, cero))
            {
                MessageBox.Show("Inhabilitado");
            }
            else { MessageBox.Show("Error"); }
        }

        protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Int32 num = Convert.ToInt32(e.CommandArgument);
                TextBox2.Text = GridView3.Rows[num].Cells[2].Text;
                TextBox4.Text = GridView3.Rows[num].Cells[3].Text;
                TextBox5.Text = GridView3.Rows[num].Cells[4].Text;

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string Nombre, Valor;
            Nombre = TextBox2.Text;
            Valor = TextBox5.Text;
            string cero = "0";
            servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
            if (servicio.Update_cobropeso(Nombre, cero))
            {
                MessageBox.Show("Inhabilitado");
                Response.Redirect("#");
            }
            else { MessageBox.Show("Error"); 
            }        
        }
    }
}