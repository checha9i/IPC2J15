using _IPC2_Fase2J15_201313819.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Web.SessionState;

namespace _IPC2_Fase2J15_201313819
{
    public partial class ActualizarDatos : System.Web.UI.Page
    {
        servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //         servicioweb.WebServiceSoapClient servicio=new servicioweb.WebServiceSoapClient();





            //            String Tabla = "Clientes";

            //            String nombre, dpi, direccion, Telefono, Telefono2, Telefono3,Apellido,NIT,contraseña,usern;


            //            //Variables de tabla clientes
            //            int ID_cliente = servicio.noClinte() + 1;
            //            nombre = Nombr.Text;
            //            dpi = DPI.Text;
            //            direccion = Direccion.Text;
            //            Telefono = telef.Text;
            //            Telefono2 = telef2.Text;
            //            Telefono3 = telef3.Text;
            //            Apellido = apellid.Text;
            //            usern = UserName.Text;
            //            NIT = nit.Text;
            //            contraseña = Password.Text;
            //            string ap = "No aprobado";

            //            //string a enviar



            //            //Variables para tabla Tarjeta
            //            String tarj1, Tipo, nombrep;
            //            tarj1 = Tarjeta.Text;
            //            Tipo = DropDownList1.SelectedItem.ToString();

            //            nombrep = nombretarjeta.Text;
            //            String Valoresclient = ""; 

            //            String TablaTarj = "Tarjeta";
            //            String CamposTarj = "No_Tarjeta,Tipo,Nombre_Propietario";
            //            String Valorestarjeta = "'" + tarj1 + "','" + Tipo + "','" + nombrep + "'";


            //            if (servicio.busquetarjetaexiste(tarj1) > 0)
            //                {


            //                    MessageBox.Show("ya existe ese numero de tarjeta");}
            //            //Verificar si nombre esta vacio
            //            string nombreupdate="";
            //            if(nombre==""){
            //            nombreupdate="";
            //            }else{
            //                nombreupdate=nombre;
            //            }
            //            //Verificar apellido
            //            string Apellidoupdate="";
            //            if(Apellido==""){
            //            Apellidoupdate="";
            //            }else{
            //               Apellidoupdate=Apellido;
            //            }

            //            //verificar pass
            //            string passupdate="";
            //            if(contraseña==""){
            //           passupdate="";
            //            }else{
            //passupdate=usern;
            //            }
            //                        //verificar dpi
            //            string dpiupdate="";
            //            if(dpi==""){
            //           dpiupdate="";
            //            }else{
            //dpiupdate=dpi;
            //            }
            //                        //verificar NIT
            //            string nitupdate="";
            //            if(NIT==""){
            //           nitupdate="";
            //            }else{
            //nitupdate=NIT;
            //            }
            //                        //verificar telefono
            //            string telefonoupdate="";
            //            if(Telefono==""){
            //           telefonoupdate="";
            //            }else{
            //telefonoupdate=Telefono;
            //            }
            //                      //verificar telefono2
            //            string telefono2update="";
            //            if(Telefono2==""){
            //           telefono2update="";
            //            }else{
            //telefono2update=Telefono2;
            //            }          //verificar telefono3
            //            string telefono3update="";
            //            if(Telefono3==""){
            //           telefono3update="";
            //            }else{
            //telefono3update=Telefono3;
            //            }

            //                      //verificar direccion
            //            string direccionupdate="";
            //            if(direccion==""){
            //           direccionupdate="";
            //            }else{
            //direccionupdate=direccion;
            //            }
            //                      //verificar nombretarjeta
            //            string nomtarjetaupdate,notarjtupdate="";

            //            if(tarj1==""){
            //                notarjtupdate="";
            //                nombreupdate="";
            //            }else{
            //                notarjtupdate=tarj1;
            //nombreupdate=nombrep;

            //            }

            //            string set="Set";
            //                        string valorupdate="";
            //            if(nombreupdate!=""){
            //            valorupdate=valorupdate+set+"Nombre='"+nombreupdate+"', ";


            //            }
            //            if(Apellidoupdate!=""){
            //            valorupdate=valorupdate+set+"Apellido='"+Apellidoupdate+"', ";


            //            }
            //                        if(passupdate!=""){
            //            valorupdate=valorupdate+set+"Apellido='"+passupdate+"'";



            //            }
            //                        if(nitupdate!=""){
            //            valorupdate=valorupdate+set+"NIT='"+nitupdate+"'";


            //            }
            //                        if(telefonoupdate!=""){
            //            valorupdate=valorupdate+set+"Telefono='"+telefonoupdate+"' ";


            //            }
            //                      if(telefono2update!=""){
            //            valorupdate=valorupdate+set+"Telefono2='"+telefono2update+"', ";


            //            }
            //                      if(telefono3update!=""){
            //            valorupdate=valorupdate+set+"Telefono3='"+telefono3update+"', ";


            //            }
            //                      if(direccionupdate!=""){
            //            valorupdate=valorupdate+set+"Direccion='"+direccionupdate+"', ";


            //            }
            //                      if(notarjtupdate!=""){



            //            }






            //         //   }else if (contraseña==confirmarcontra.Text){ 
            //         //       if (servicio.Registrar(TablaTarj, CamposTarj, Valorestarjeta))
            //         //   {
            //         //       Response.Write("Tarjeta Agregada Exitosamente");
            //         ////verifica si tiene o no mas tarjetas
            //         //       if (servicio.Registrar(Tabla, CamposClientes, Valoresclient))
            //         //       {
            //         //           MessageBox.Show("Cliente Agregado Exitosamente");
            //         //           Response.Redirect("~/DefaultCliente");


            //         //       }
            //         //       else
            //         //       {
            //         //           Response.Write("Error cliente");
            //         //       }


            //                }
            //            }



            //                }



            //            //else
            //            //{

            //            //    Response.Write("MostrarError tarjeta1");

            //            //}

        }
    }
}
