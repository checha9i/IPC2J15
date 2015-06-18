using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace _IPC2_Fase2J15_201313819
{
    public partial class RegistroEmpleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {







            servicioweb.WebServiceSoapClient servicio=new servicioweb.WebServiceSoapClient();
            String Tabla = "Empleado";

            String nombre, dpi, direccion, Telefono, Telefono2, Telefono3, Apellido, sueldo, rol,contraseña,nombresucursal,correo;
            String CamposClientes = "ID_Empleado,Nombre,Apellido,Telefono,Telefono2,Telefono3,Sueldo,Domicilio,DPI,Correo,ID_Depa,contraseña,Rol";
            nombresucursal=nombresucu.Text;
            //Variables de tabla clientes
            int ID_sucursal = servicio.select_sucursal(nombresucursal);
            string nombredepa=depa.Text;
            
            int noempleado = servicio.noEmpleado();
            nombre = Nombr.Text;
            dpi = DPI.Text;
            direccion = Direccion.Text;
            Telefono = telef.Text;
            Telefono2 = telef2.Text;
            Telefono3 = telef3.Text;
            Apellido = apellid.Text;
             correo= Correo.Text;
            sueldo = Sueldo.Text;
            contraseña = Password.Text;
            rol = DropDownList1.SelectedItem.ToString();
            //string ap = "No aprobado";
            int dep=servicio.verificar_depa(nombredepa,ID_sucursal);
            //string a enviar
            String Valores = "'"+noempleado+"','"+nombre+"','"+Apellido+"','"+Telefono+"','"+Telefono2+"','"+Telefono3+"','"+sueldo+"','"+direccion+"','"+dpi+"','"+correo+"','"+dep+"','"+contraseña+"','"+rol+"'";



            
 if (contraseña == confirmarcontra.Text)
 {

     if (servicio.verificar_depa(nombredepa, ID_sucursal) == 1)
     {



         if (servicio.Registrar(Tabla, CamposClientes, Valores))
         {
             MessageBox.Show("Cliente Agregado Exitosamente");
             Response.Redirect("~/DefaultEmpleado");


         }
         else
         {
             Response.Write("Error empleado");
         }
     }
     else {
         MessageBox.Show("error departamento o sucursal");
     }

 }
            
        }
    }
}