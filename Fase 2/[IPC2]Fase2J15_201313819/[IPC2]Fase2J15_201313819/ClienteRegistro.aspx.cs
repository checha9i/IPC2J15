using _IPC2_Fase2J15_201313819.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace _IPC2_Fase2J15_201313819
{
    public partial class ClienteRegistro : System.Web.UI.Page
    {
        servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

          





            String Tabla = "Clientes";

            String nombre, dpi, direccion, Telefono, Telefono2, Telefono3,Apellido,NIT,contraseña,usern;
            String CamposClientes = "ID_Cliente, DPI, Nombre, Apellido, NIT, Telefono, Telefono2, Telefono3, Direccion,Tarjeta, usuario,contraseña,Aprobacion";

            //Variables de tabla clientes
            int ID_cliente = servicio.noClinte() + 1;
            nombre = Nombr.Text;
            dpi = DPI.Text;
            direccion = Direccion.Text;
            Telefono = telef.Text;
            Telefono2 = telef2.Text;
            Telefono3 = telef3.Text;
            Apellido = apellid.Text;
            usern = UserName.Text;
            NIT = nit.Text;
            contraseña = Password.Text;
            string ap = "No aprobado";

            //string a enviar



            //Variables para tabla Tarjeta
            String tarj1, Tipo, nombrep;
            tarj1 = Tarjeta.Text;
            Tipo = DropDownList1.SelectedItem.ToString();
            
            nombrep = nombretarjeta.Text;
            String Valoresclient = "'" + ID_cliente + "','" + dpi + "','" + nombre + "','" + Apellido + "','" + NIT + "','" + Telefono + "','" + Telefono2 + "','" + Telefono3 + "','" + direccion + "','" + tarj1 + "','" + usern + "','" + contraseña + "','" + ap +"'";           

            String TablaTarj = "Tarjeta";
            String CamposTarj = "No_Tarjeta,Tipo,Nombre_Propietario";
            String Valorestarjeta = "'" + tarj1 + "','" + Tipo + "','" + nombrep + "'";
          
            
            if (servicio.busquetarjetaexiste(tarj1) > 0)
                {


                    MessageBox.Show("ya existe ese numero de tarjeta");
            }else if (contraseña==confirmarcontra.Text){ 
                if (servicio.Registrar(TablaTarj, CamposTarj, Valorestarjeta))
            {
                Response.Write("Tarjeta Agregada Exitosamente");
         //verifica si tiene o no mas tarjetas
                if (servicio.Registrar(Tabla, CamposClientes, Valoresclient))
                {
                    MessageBox.Show("Cliente Agregado Exitosamente");
                    Response.Redirect("~/DefaultCliente");
                 //Session["UserName"]=; 

                }
                else
                {
                    Response.Write("Error cliente");
                }


                }
            }



                }


                
            //else
            //{

            //    Response.Write("MostrarError tarjeta1");

            //}
            
        }
        }
    
