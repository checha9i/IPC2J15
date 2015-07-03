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
    public partial class ActualizarEmpleado : System.Web.UI.Page
    {
        servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["UserName"].ToString();
            SqlConnection con21 = new SqlConnection("Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True");
            String nombre1 = "Select * from Empleado where ID_Empleado='" + id + "' ";
            SqlCommand comando1 = new SqlCommand(nombre1, con21);
            con21.Open();
            SqlDataReader leer1 = comando1.ExecuteReader();
            if (leer1.Read() == true)
            {

                
                Nombr.Text = leer1["Nombre"].ToString();
                apellid.Text = leer1["Apellido"].ToString();

                DPI.Text = leer1["DPI"].ToString();
                Sueldo.Text = leer1["Sueldo"].ToString();
                telef.Text = leer1["Telefono"].ToString();
                Direccion.Text = leer1["Domicilio"].ToString();
                Correo.Text = leer1["Correo"].ToString();
                contra.Text=leer1["contraseña"].ToString();

            }
            else
            {
                MessageBox.Show("Error en sacar datos");
            }
            con21.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string datos = "Nombre='" + Nombr.Text + "', Apellido='" + apellid.Text + "', Telefono='" + telef.Text + "', Sueldo='" + Sueldo.Text + "', Domicilio='" + Direccion.Text + "', DPI='" + DPI.Text + "', Correo='" + Correo.Text + "', contraseña='" + contra.Text + "' ";
            string tabla = "Empleado";
            string idC = Session["UserName"].ToString();
       
            string nombreid = "ID_Empleado";
            if (servicio.Update_datos(idC, tabla, nombreid, datos))
            {
                MessageBox.Show("Correcto");
            }
            else
            {
                MessageBox.Show("Error");
            }

        }
    }
}