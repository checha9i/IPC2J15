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
    public partial class RegistrarLibros : Form
    {
        public RegistrarLibros()
        {
       
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 reg = new Form1();
            reg.Show();
            this.Hide();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void RegistrarLibros_Load(object sender, EventArgs e)
        {

        }
        servicioweb.ServiceSoapClient servicio=new servicioweb.ServiceSoapClient();
        private void button2_Click(object sender, EventArgs e)
        {
            

            String Tabla = "Libro";
            String Campos = "ID_Libro, Nombre, Autor, Existencia, Paginas, Tema, Co_Autor, Disponibles, Prestados, Reservados,topprestados";
            String existenci, Disponibles;
            existenci = existencias.Text;
            Disponibles = existenci;
            int ID = servicio.cantidad()+1;
            String Valores = "'" + ID + "','" + nombre.Text + "','" + Autor.Text + "','" + existenci + "','" + Paginas.Text + "','" + Tema.Text + "','" + Co_Autor.Text + "','" + Disponibles +"','" + 0 + "','" + 0 + "','"+0+"'";

            if (servicio.Registrar(Tabla, Campos, Valores))
            {

                MessageBox.Show("Libro creado");
            }
            else
            {
                //Response.Write(cq.MostrarError);

            }
    
        
        }
    }
}
