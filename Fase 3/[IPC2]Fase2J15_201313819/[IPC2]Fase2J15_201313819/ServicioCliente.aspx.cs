using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


namespace _IPC2_Fase2J15_201313819
{
    public partial class ServicioCliente : System.Web.UI.Page
    {
        string nombrepaquete = "";     
        public String valorfinal, apellido, direccion;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btaprobar_Click(object sender, EventArgs e)
        {
            
        }

        protected void btpedidos_Click(object sender, EventArgs e)
        {

           
        }

        protected void añadirlote_Click(object sender, EventArgs e)
        {
           
        }

        protected void btfactura_Click(object sender, EventArgs e)
        {
            String NombreUsuario, nombre;

            SqlConnection con21 = new SqlConnection("Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True");
            String nombre1 = "Select * from Clientes where Casilla='" + txtcasilla.Text + "' ";
            SqlCommand comando1 = new SqlCommand(nombre1, con21);
            con21.Open();
            SqlDataReader leer1 = comando1.ExecuteReader();
            if (leer1.Read() == true)
            {

                NombreUsuario = leer1["usuario"].ToString();
                //lbusuarios.Text = NombreUsuario;
                lbnombre.Text = leer1["Nombre"].ToString();
                lbapellido.Text = leer1["Apellido"].ToString();
                lbdireccion.Text = leer1["Direccion"].ToString();
                

            }
            else
            {
                MessageBox.Show("Error en sacar datos");
            }
            con21.Close();


            



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void gvpaquetes_SelectedIndexChanged(object sender, EventArgs e)
        {

          //  lbtotal.Text = gvpaquetes.SelectedRow.Cells[2].Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }


        protected void txtbuscar_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();
            iTextSharp.text.Document pdfDoc = new iTextSharp.text.Document(PageSize.A4, 10, 10, 10, 10);

            iTextSharp.text.pdf.PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);

            string cadenaFinal = "";
            pdfDoc.Open();
            string strContent = cadenaFinal;
            pdfDoc.Add(new Paragraph("                                                                                                                  FACTURA       No. 001"));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                  "+servicio.fechahoy().ToString()+"                                            "));
            pdfDoc.Add(new Paragraph("                 Quetzal Expres                               "));
            pdfDoc.Add(new Paragraph("            10ma calle 20-15 Zona 15"));
            pdfDoc.Add(new Paragraph("              www.QuetzalExpress.com"));
            pdfDoc.Add(new Paragraph("             Nit Empresa: 4543543-1"));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));

            pdfDoc.Add(new Paragraph("NOMBRE:" + lbnombre.Text + "   APELLIDO:  " + lbapellido.Text + "    "));


            pdfDoc.Add(new Paragraph("Dirección:  " + lbdireccion.Text + "                                "));
            pdfDoc.Add(new Paragraph("                                                              "));

            pdfDoc.Add(new Paragraph("  "+lbfactura.Text+"         "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                     TOTAL: " + TextBox1.Text));

            //Read string contents using stream reader and convert html to parsed conent 
            var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(strContent), null);

            //Get each array values from parsed elements and add to the PDF document 
            foreach (var htmlElement in parsedHtmlElements)
                pdfDoc.Add(htmlElement as IElement);

            //Close your PDF 
            pdfDoc.Close();

            Response.ContentType = "application/pdf";

            //Set default file Name as current datetime 
            Response.AddHeader("content-disposition", "attachment; filename=FACTURA.pdf");
            System.Web.HttpContext.Current.Response.Write(pdfDoc);

            Response.Flush();
            Response.End();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Int32 num = Convert.ToInt32(e.CommandArgument);
                txtcasilla.Text = GridView1.Rows[num].Cells[12].Text;
                lbusuarios.Text = GridView1.Rows[num].Cells[1].Text;
                
            }
        }

        protected void gvpaquetes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Int32 num = Convert.ToInt32(e.CommandArgument);
                TextBox1.Text = gvpaquetes.Rows[num].Cells[6].Text;

                lbfactura.Text= lbfactura.Text+" ID paquete: "+gvpaquetes.Rows[num].Cells[1].Text;
                lbfactura.Text = lbfactura.Text + " Peso:" + gvpaquetes.Rows[num].Cells[2].Text;
                lbfactura.Text = lbfactura.Text + " Sede:" + gvpaquetes.Rows[num].Cells[3].Text;
                lbfactura.Text = lbfactura.Text + " Lote:" + gvpaquetes.Rows[num].Cells[8].Text;
            }
        }

    }
}