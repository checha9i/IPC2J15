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
    public partial class Consultar : Form
    {
        public Consultar()
        {
            InitializeComponent();
            servicioweb.ServiceSoapClient MyService = new servicioweb.ServiceSoapClient();
            dataGridView1.DataSource = MyService.busqueda_autor(textBox1.Text);
            dataGridView1.DataMember = "Libro";
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            servicioweb.ServiceSoapClient MyService = new servicioweb.ServiceSoapClient();
         
            dataGridView1.DataMember = "Libro";
            string texto = comboBox1.SelectedItem.ToString();
            if (comboBox1.SelectedItem.Equals("Nombre de Libro"))
            {

                dataGridView1.DataSource = MyService.busqueda_nombre(textBox1.Text);
                dataGridView1.DataMember = "Libro";
                
            }
            else if (comboBox1.SelectedItem.Equals("Autor"))
            {
                dataGridView1.DataSource = MyService.busqueda_autor(textBox1.Text);
                dataGridView1.DataMember = "Libro";
            }
            else if (comboBox1.SelectedItem.Equals("Mas Prestados"))
            {
                dataGridView1.DataSource = MyService.busqueda_masvendidos();
                dataGridView1.DataMember = "Prestamos";
            }         
            
            
            

        }
    }
}
