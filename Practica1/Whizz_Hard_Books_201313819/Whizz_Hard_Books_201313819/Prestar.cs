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
    public partial class Prestar : Form
    {
        public Prestar()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            servicioweb.ServiceSoapClient MyService = new servicioweb.ServiceSoapClient();
            if (MyService.disponibles(ID.Text) > 1 && MyService.nprestados_cliente(carnet.Text) < 6)
            {
                //registrar prestamo
                int nprestamo = MyService.nprestamo() + 1;
                string carn = carnet.Text;
                string libro = ID.Text;
                string fecha = MyService.fechahoy().ToString();
                //update tablas
                int nprestados = MyService.nprestados_cliente(carn) + 1;
                int ntop = MyService.top(libro) + 1;
                int disponibles = MyService.disponibles(libro) - 1;
                int prestados = MyService.prestamos(libro) + 1;
                string tablacliente = "Clientes";
                //registro prestamo
                String TablaPrestamo = "Prestamos";
                String TablaLibro = "Libro";
                String Campos = "ID_Prestamo, carnet, ID_Libro, fecha_prestamo, fecha_devolucion";
                String valores = "'" + nprestamo + "','" + carn + "','" + libro + "','" + fecha + "','" + " " + "'";

                if (MyService.nprestados_cliente(carnet.Text) > 4)
                {

                    MessageBox.Show("Cliente ya tiene 5 libros prestados");

                }
                else if (MyService.disponibles(ID.Text) ==0)
                {
                    MessageBox.Show("Libro no disponible en existencias");
                }else if (MyService.Registrar(TablaPrestamo, Campos, valores))
                {


                    if (MyService.Update_Prestamo(TablaLibro, prestados, libro, disponibles,ntop))
                    {

                        if (MyService.Update_clientes(tablacliente, nprestados, carn))
                        {

                            MessageBox.Show("Libro Prestado satisfactoriamente.");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Error");
                    }

                }
                else
                {
                    //Response.Write(cq.MostrarError);

                }



            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            

            servicioweb.ServiceSoapClient MyService = new servicioweb.ServiceSoapClient();
            int reserva = MyService.reserva_no()+1;
            string carn = carnet.Text;
            string libro = ID.Text;
            string fecha = MyService.fechahoy().ToString();
            int reservados = MyService.Reservados(libro)+1;
            int nprestados = MyService.nprestados_cliente(carn) + 1;

            String Campos = "ID_reserva, ID_Libro, carnet, fecha_reservacion";
            String valores = "'" + reserva + "','" + libro+ "','" + carn + "','" + fecha + "'";
            String tabla = "Reservas";

            
            if (MyService.Registrar(tabla, Campos, valores))
            {


                if (MyService.Update_Reserva("Libro", reservados, libro))
                {


                        MessageBox.Show("Libro Reservado satisfactoriamente.");
                    
                }
                else
                {
                    MessageBox.Show("Error");
                }

            }
            else
            {
                //Response.Write(cq.MostrarError);

            }


        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form1 reg = new Form1();
            reg.Show();
            this.Hide();
        }
    }
}
