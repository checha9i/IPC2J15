using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.IO;
namespace _IPC2_Fase2J15_201313819
{
    public partial class ConsultarPaquete : System.Web.UI.Page
    {
        servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        string id = "";
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Int32 num = Convert.ToInt32(e.CommandArgument);
                TextBox1.Text = GridView1.Rows[num].Cells[1].Text;
                TextBox3.Text = GridView1.Rows[num].Cells[1].Text;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            servicio.FacturaImagen(TextBox1.Text, TextBox2.Text,id);
            servicio.cambiodeestadopaquetecliente(TextBox1.Text);
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (ChecarExtension(FileUpload1.FileName))
                {
                    FileUpload1.SaveAs(MapPath(FileUpload1.FileName));


                    Label1.Text = FileUpload1.FileName + " cargado exitosamente";

                    TextBox2.Text = FileUpload1.FileName;
                }
            }
            else
            {
                Label1.Text = "Error al subir el archivo o no es el tipo .CSV";
            }
        }


        bool ChecarExtension(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".png":
                    return true;
                case ".jpg":

                   return true;
                case ".jpeg":
                   return true;
                default:
                    return false;
            }
        }

    }
}