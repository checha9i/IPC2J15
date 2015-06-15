using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Whizz_Hard_Books_201313819
{
    public partial class Registrar_Cliente : Form
    {
        public Registrar_Cliente()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 reg = new Form1();
            reg.Show();
            this.Hide();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
            textBox6.Text = "";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            servicioweb.ServiceSoapClient servicio = new servicioweb.ServiceSoapClient();
            String Tabla = "Clientes";
            String Campos = "Carnet, Nombre, DPI, Direccion, Telefono1, Telefono2, Telefono3, n_prestamos";
            int ID = servicio.carnet() + 1;
            String nombre, dpi, direccion, telefono, telefono2, telefono3;
            nombre=textBox1.Text;
                dpi=textBox2.Text;
                    direccion=textBox3.Text;
                        telefono=textBox4.Text;
                        telefono2=textBox5.Text;
                        telefono3 = textBox6.Text;


            String Valores = "'" + ID + "','" + nombre + "','" + dpi + "','" + direccion + "','" + telefono + "','" + telefono2 + "','" + telefono3+ "','" +0 + "'";

            if (servicio.Registrar(Tabla, Campos, Valores))
            {

                MessageBox.Show("Cliente creado");
            }
            else
            {
                //Response.Write(cq.MostrarError);

            }
    
        }
    }
}
