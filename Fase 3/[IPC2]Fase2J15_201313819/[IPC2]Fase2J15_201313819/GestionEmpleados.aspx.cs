using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2J15_201313819
{
    public partial class GestionEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text=Session["UserName"].ToString();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Int32 num = Convert.ToInt32(e.CommandArgument);
                TextBox1.Text = GridView1.Rows[num].Cells[2].Text;
                TextBox2.Text = GridView1.Rows[num].Cells[3].Text;
                TextBox3.Text = GridView1.Rows[num].Cells[4].Text;
                TextBox4.Text = GridView1.Rows[num].Cells[5].Text;
                TextBox5.Text = GridView1.Rows[num].Cells[6].Text;
                TextBox6.Text = GridView1.Rows[num].Cells[7].Text;
                TextBox7.Text = GridView1.Rows[num].Cells[8].Text;

            }
        }
    }
}