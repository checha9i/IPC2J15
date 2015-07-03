using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace _IPC2_Fase2J15_201313819
{
    public partial class Cotizacion : System.Web.UI.Page
    {
        public float comision33, pesolb33, impu;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Impuestos_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            float costoinicio, peso, total, C1, C2, C3;



            //Verificación los campos de cobros

            SqlConnection con2 = new SqlConnection("Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True");
            String nombre = "Select * from Sede where Nombre_Pais='" + DropDownList2.Text + "' ";
            SqlCommand comando = new SqlCommand(nombre, con2);
            con2.Open();
            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read() == true)
            {

                comision33 = float.Parse(leer["Comision"].ToString());
                pesolb33 = float.Parse(leer["CobroPeso"].ToString());




            }
            else
            {
                MessageBox.Show("dddd");
            }
            con2.Close();

            // verifica campos de impuestos
            SqlConnection con21 = new SqlConnection("Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True");
            String nombre1 = "Select * from Impuesto where Nombre='" + DropDownList1.SelectedItem.ToString() + "' ";
            SqlCommand comando1 = new SqlCommand(nombre1, con21);
            con21.Open();
            SqlDataReader leer1 = comando1.ExecuteReader();
            if (leer1.Read() == true)
            {

                impu = float.Parse(leer1["Valor"].ToString());


            }
            else
            {
                MessageBox.Show("dddd");
            }
            con21.Close();




            costoinicio = float.Parse(TextBox1.Text);
            peso = float.Parse(TextBox2.Text);

            

            C1 = costoinicio + (peso * pesolb33);
            C2 = (costoinicio * ((comision33 / 100)));
            C3 = costoinicio * (impu / 100);
            total = C1 + C2 + C3;
            TextBox4.Text = total.ToString();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}