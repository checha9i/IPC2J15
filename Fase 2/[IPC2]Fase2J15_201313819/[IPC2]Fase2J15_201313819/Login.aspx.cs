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

        }

        protected void LogIn(object sender, EventArgs e)
        {

          

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user, pass;
            user = UserName.Text;
            pass = Password.Text;
        

                if (service.usuario_verificar(user,pass) == 1)
                {

                    MessageBox.Show("Todo bien :D");
                    Response.Redirect("~/Default");
                    
                }
            }

        protected void LoginView1_ViewChanged(object sender, EventArgs e)
        {
           

        } 
    
    
    }
        }
    
