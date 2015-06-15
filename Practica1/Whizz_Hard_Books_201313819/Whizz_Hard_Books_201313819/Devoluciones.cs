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
    public partial class Devoluciones : Form
    {
        public Devoluciones()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 pre = new Form1();
            pre.Show();
            this.Hide();
        }

        private void Devoluciones_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            servicioweb.ServiceSoapClient MyService = new servicioweb.ServiceSoapClient();
            int prestamo = MyService.select_prestamo(textBox2.Text,textBox1.Text);
            string fecha = MyService.fechahoy();

            int nprestados = MyService.nprestados_cliente(textBox2.Text) - 1;
            int disponibles = MyService.disponibles(textBox1.Text) + 1;
            int prestados = MyService.prestamos(textBox1.Text) - 1;
            string tabla = "Libro";
                if (MyService.Update_devolucion( prestamo, fecha))
                {


                    if (MyService.Update_Prestamo(tabla,prestados,textBox1.Text, disponibles))
                    {
                        if (MyService.Update_clientes("Clientes",nprestados,textBox2.Text))
                        {

                            MessageBox.Show("Libro Devuelto satisfactoriamente.");
                        }
                    }
                }
                else
                {
                    MessageBox.Show("Error");
                }

 



        }
    }
}
