using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Web.SessionState;
using _IPC2_Fase2J15_201313819.Models;

namespace _IPC2_Fase2J15_201313819
{
    public partial class Login : System.Web.UI.Page
    {
        servicioweb.WebServiceSoapClient service = new servicioweb.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = null;
        }

        protected void LogIn(object sender, EventArgs e)
        {

          

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //servicioweb.WebServiceSoapClient service = new servicioweb.WebServiceSoapClient();
            //string estado = "1";
            //string count = service.estado_sesion(estado).ToString();

            //if (service.estado_sesion(1)>=1)
            //{
            //    Response.Redirect("~/Default");
            //}

            
            string user, pass;
            user = UserName.Text;
            pass = Password.Text;

            if (DropDownList1.SelectedItem.ToString() == "Cliente")
            {
                if (service.usuario_verificar(user, pass) == 1)
                {

                    

                    MessageBox.Show("Inicio Sesion");
                    Session["UserName"] = user;
                    Session["IDcliente"]=service.id_cliente_sesion(user);
                    Session["Tipo"] = "Cliente";
                    Response.Redirect("~/DefaultCliente");

                }
                else
                {
                    MessageBox.Show("Usuario o Password Erroneos");
                }


            }
            else if(DropDownList1.SelectedItem.ToString() == "Empleado")
            {
                if (service.empleado_verificar(user, pass,DropDownList1.SelectedItem.ToString()) == 1)
                {
                    Session["UserName"] = service.id_empleado_sesion(user); ;
                    Session["Tipo"] = "Empleado";
                    Session["Sede"] = service.id_empleado_sede(user);
                    MessageBox.Show("Inicio Sesion como "+Session["Tipo"]);

                    Response.Redirect("~/DefaultEmpleado");

                }
                else { MessageBox.Show("Usuario o Password Erroneos"); 
                }


 
            }
            else if (DropDownList1.SelectedItem.ToString() == "Administrador")
            {
                if (service.id_administrador(user, pass) == 1)
                {
                    Session["UserName"] = user; 
                    Session["Tipo"] = "Administrador";
                    Session["Sede"] = service.id_admin_sede(user);
                    MessageBox.Show("Inicio Sesion como " + Session["Tipo"]);

                    Response.Redirect("~/DefaultAdministrador");

                }
                else
                {
                    MessageBox.Show("Usuario o Password Erroneos");
                }


            }
            else if (DropDownList1.SelectedItem.ToString() == "Director")
            {
                if (service.id_director(user, pass) == 1)
                {
                    Session["UserName"] = user;
                    Session["Tipo"] = "Director";

                    MessageBox.Show("Inicio Sesion como " + Session["UserName"]);

                    Response.Redirect("~/DefaultDirector");

                }
                else
                {
                    MessageBox.Show("Usuario o Password Erroneos");
                }


            }
        }

        protected void LoginView1_ViewChanged(object sender, EventArgs e)
        {
           

        } 
    
    
    }
        }
    
