using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace _IPC2_Fase2J15_201313819
{
    public partial class Gestion_de_Paquetes : System.Web.UI.Page
    {
        servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            string empleado = Session["UserName"].ToString();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Tabla = "Paquete";
            String Campo = "Peso_Lb,Impuesto,Estado,Comision,ValorFinal,usuario,lote,fecha_cambio,costo,empleado";
            float costo=Convert.ToInt32(TextBox6.Text);
            float impuesto=servicio.impuesto(DropDownList1.SelectedItem.ToString());
            float comision=servicio.comision_sede(Session["Sede"].ToString());
            float cobropeso=servicio.peso_sede(Session["Sede"].ToString());
                float costofinal= costo +(costo*(impuesto/100))+(costo*(comision/100))+(float.Parse(TextBox1.Text)*cobropeso);
                String Valores = "'" + TextBox1.Text + "','" + impuesto + "','" + "Ingresado" + "','" + comision + "','" + costofinal + "','" + TextBox4.Text + "','" + servicio.idlote(DropDownList2.SelectedItem.ToString()) + "','" + servicio.fechahoy().ToString() + "','" + TextBox6.Text + "','"+Session["UserName"].ToString() + "'";
                if (servicio.Registrar(Tabla, Campo, Valores))
                {
                    MessageBox.Show("Paquete Agregado Exitosamente");

                }
                else {
                    MessageBox.Show("Paquete malo");
                }
        }
    }
}