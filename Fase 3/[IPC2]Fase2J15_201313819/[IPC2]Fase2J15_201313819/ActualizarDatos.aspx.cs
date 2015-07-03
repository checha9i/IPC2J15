using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace _IPC2_Fase2J15_201313819
{
    public partial class ActualizarDatos : System.Web.UI.Page
    {        servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();





        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["IDcliente"].ToString();
            SqlConnection con21 = new SqlConnection("Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True");
            String nombre1 = "Select * from Clientes where ID_Cliente='" + id + "' ";
            SqlCommand comando1 = new SqlCommand(nombre1, con21);
            con21.Open();
            SqlDataReader leer1 = comando1.ExecuteReader();
            if (leer1.Read() == true)
            {

                UserName.Text = leer1["usuario"].ToString();
                Nombr.Text = leer1["Nombre"].ToString();
                apellid.Text = leer1["Apellido"].ToString();

                DPI.Text = leer1["DPI"].ToString();
                nit.Text = leer1["NIT"].ToString();
                telef.Text = leer1["Telefono"].ToString();
                Direccion.Text = leer1["Direccion"].ToString();
                Tarjeta.Text = leer1["Tarjeta"].ToString();


            }
            else
            {
                MessageBox.Show("Error en sacar datos");
            }
            con21.Close();


         

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string datos = "";
            datos = " DPI='"+DPI.Text+"', Nombre='" + Nombr.Text + "', Apellido='" + apellid.Text + "', NIT='" + nit.Text + "', Telefono='" + telef.Text + "', Direccion='" + Direccion.Text + "', Tarjeta='" + Tarjeta.Text + "', usuario='" + UserName.Text + "', contraseña='" + Password.Text + "'";
            string tabla = "Clientes";
            string idC = Session["IDcliente"].ToString();
            
            string nombreid = "ID_Cliente";
            if (servicio.Update_datos(idC, tabla, nombreid,datos ))
            {
                MessageBox.Show("Correcto");
            }
            else { 
                MessageBox.Show("Error"); 
            }

        }
    }
}