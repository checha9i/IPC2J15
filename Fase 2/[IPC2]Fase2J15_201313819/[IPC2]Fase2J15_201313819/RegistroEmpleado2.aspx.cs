using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace _IPC2_Fase2J15_201313819
{
    public partial class RegistroEmpleado2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {







            servicioweb.WebServiceSoapClient servicio=new servicioweb.WebServiceSoapClient();
            String Tabla = "Empleado";

            String nombre, dpi, direccion, Telefono, Apellido, sueldo,nombresucursal,correo;
            String CamposClientes = "Nombre,Apellido,Telefono,Sueldo,Domicilio,DPI,Correo,ID_Depa,contraseña,rol";
            nombresucursal = DropDownList2.SelectedItem.ToString();
            //Variables de tabla clientes
            int ID_sucursal = servicio.select_sucursal(nombresucursal);
            string nombredepa=depa.Text;
            string rol = DropDownList1.Text;
            nombre = Nombr.Text;
            dpi = DPI.Text;
            direccion = Direccion.Text;
            Telefono = telef.Text;
            Apellido = apellid.Text;
             correo= Correo.Text;
            sueldo = Sueldo.Text;

            //string ap = "No aprobado";
            int dep=servicio.verificar_depa(nombredepa,ID_sucursal);
            //string a enviar
            String Valores = "'"+nombre+"','"+Apellido+"','"+Telefono+"','"+sueldo+"','"+direccion+"','"+dpi+"','"+correo+"','"+dep+"',default,'"+rol+"'";
            
     

         if (servicio.Registrar(Tabla, CamposClientes, Valores))
         {
             MessageBox.Show("Cliente Agregado Exitosamente");
             Session["UserName"] = servicio.noEmpleado(dpi) ;
             Session["Tipo"]="Empleado";
             Response.Redirect("~/DefaultEmpleado");
            
         }
         else
         {
             Response.Write("Error empleado");
         }
     

 
            
        }
    }
}