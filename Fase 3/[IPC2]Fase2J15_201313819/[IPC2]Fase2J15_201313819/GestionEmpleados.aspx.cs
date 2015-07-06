using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace _IPC2_Fase2J15_201313819
{
    public partial class GestionEmpleados : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            servicioweb.WebServiceSoapClient service = new servicioweb.WebServiceSoapClient();
           
            TextBox8.Text= service.id_empleado_sede(Session["UserName"].ToString()).ToString();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Int32 num = Convert.ToInt32(e.CommandArgument);
                TextBox9.Text = GridView1.Rows[num].Cells[1].Text;
                TextBox1.Text = GridView1.Rows[num].Cells[2].Text;
                TextBox2.Text = GridView1.Rows[num].Cells[3].Text;
                TextBox3.Text = GridView1.Rows[num].Cells[4].Text;
                TextBox4.Text = GridView1.Rows[num].Cells[5].Text;
                TextBox5.Text = GridView1.Rows[num].Cells[6].Text;
                TextBox6.Text = GridView1.Rows[num].Cells[7].Text;
                TextBox7.Text = GridView1.Rows[num].Cells[8].Text;
                TextBox10.Text = GridView1.Rows[num].Cells[9].Text;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            servicioweb.WebServiceSoapClient service = new servicioweb.WebServiceSoapClient();
            MessageBox.Show(TextBox9.Text);
            if (service.despedir_empleado(TextBox9.Text))
            {
                MessageBox.Show("Correcto");

            }
            else {
                MessageBox.Show("error");
            
            }


        }
    }
}