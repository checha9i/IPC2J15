using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Microsoft.VisualBasic.FileIO;

using System.Configuration;
namespace _IPC2_Fase2J15_201313819
{
    public partial class CargaCSV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                if (ChecarExtension(FileUpload1.FileName))
                {
                    FileUpload1.SaveAs(MapPath(FileUpload1.FileName));


                    Label1.Text = FileUpload1.FileName + " cargado exitosamente";

                    lblOculto.Text = MapPath(FileUpload1.FileName);
                }
            }
            else
            {
                Label1.Text = "Error al subir el archivo o no es el tipo .CSV";
            }
        }
        private DataTable CrearTabla(String fila)
        {
            int cantidadColumnas;
            DataTable tabla = new DataTable("Datos");
            String[] valores = fila.Split(new char[] { ',' });
            cantidadColumnas = valores.Length;
            int idx = 0;
            foreach (String val in valores)
            {
                String nombreColumna = String.Format("{0}", idx++);
                tabla.Columns.Add(nombreColumna, Type.GetType("System.String"));
            }
            return tabla;
        }

        private DataRow AgregarFila(String fila, DataTable tabla)
        {
            int cantidadColumnas = 100;
            String[] valores = fila.Split(new char[] { ',' });
            Int32 numeroTotalValores = valores.Length;
            if (numeroTotalValores > cantidadColumnas)
            {
                Int32 diferencia = numeroTotalValores - cantidadColumnas;
                for (Int32 i = 0; i < diferencia; i++)
                {

                    String nombreColumna = String.Format("{0}", (cantidadColumnas + i));
                    tabla.Columns.Add(nombreColumna, Type.GetType("System.String"));
                }
                cantidadColumnas = numeroTotalValores;
            }
            int idx = 0;
            DataRow dfila = tabla.NewRow();
            foreach (String val in valores)
            {
                String nombreColumna = String.Format("{0}", idx++);
                dfila[nombreColumna] = val.Trim();
            }
            tabla.Rows.Add(dfila);
            return dfila;
        }



        private void CargarDatos(string strm)
        {
            DataTable tabla = null;
            StreamReader lector = new StreamReader(strm);
            String fila = String.Empty;
            Int32 cantidad = 0;
            do
            {
                fila = lector.ReadLine();
                if (fila == null)
                {
                    break;
                }
                if (0 == cantidad++)
                {
                    tabla = this.CrearTabla(fila);
                }
                this.AgregarFila(fila, tabla);
            } while (true);

            GridView1.DataSource = tabla;
            GridView1.DataBind();
            
            //try
            //    {

            //        //Para la cadena de conexion te guias de este enlace http://www.connectionstrings.com/sql-server-2008
            //        using (SqlConnection conexion = new SqlConnection("Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True"))
            //        {
            //            string max = "MAX";
            //            //Recorremos el Datagridview
            //            foreach (DataRowView fila in GridView.Rows)
            //            {

            //                //Por ejemplo si tu datagridview posee 3 columnas, tendría la siguiente estructura
            //                SqlCommand cmd = new SqlCommand("insert into Empleado values(ID_Empleado,Nombre,Apellido,Telefono,Telefono2,Telefono3,Sueldo,Domicilio,DPI,Correo,ID_Depa,contraseña,Rol)", conexion);
            //                //El comando recibe los parametros, Columna 1
            //                cmd.Parameters.Add("@ID_Empleado", SqlDbType.Int).Value = Convert.ToInt32(fila[0].ToString()); 
            //                //El comando recibe los parametros, Columna 2
            //                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar, 100).Value = fila[1].ToString();
            //                //El comando recibe los parametros, Columna 3
            //                cmd.Parameters.Add("@Apellido", SqlDbType.VarChar, 100).Value = fila[2].ToString();
            //                cmd.Parameters.Add("@Telefono", SqlDbType.Int).Value = Convert.ToInt32(fila[3].ToString());
            //                cmd.Parameters.Add("@Telefono2", SqlDbType.Int).Value = Convert.ToInt32(fila[4].ToString());
            //                cmd.Parameters.Add("@Telefono3", SqlDbType.Int).Value = Convert.ToInt32(fila[5].ToString());
            //                cmd.Parameters.Add("@Sueldo", SqlDbType.Int).Value = Convert.ToInt32(fila[6].ToString());
            //                cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar, 100).Value = fila[6].ToString(); 
            //                    cmd.Parameters.Add("@DPI", SqlDbType.Int).Value = fila[7].ToString(); 
            //                cmd.Parameters.Add("@Correo", SqlDbType.VarChar, 100).Value = fila[8].ToString();
            //                cmd.Parameters.Add("@ID_Depa", SqlDbType.Int).Value = fila[9].ToString(); 
            //                cmd.Parameters.Add("@contraseña", SqlDbType.VarChar, 100).Value = fila[10].ToString();
            //                cmd.Parameters.Add("@Rol", SqlDbType.VarChar, 100).Value = fila[11].ToString();
            //                //Abrimos conexion
            //                conexion.Open();

            //                //Ejecutamos el comando
            //                cmd.ExecuteNonQuery();

            //                //Cerramos conexion
            //                conexion.Close();

            //            }

            //        }

            //    }
            //    catch (Exception ex)
            //    {
            //        //Anunciamos el error
            //        MessageBox.Show(ex.Message);
            //    }
            //}















        }

        bool ChecarExtension(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".csv":
                    return true;
                default:
                    return false;
            }
        }







        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                CargarDatos(lblOculto.Text);
            }
            catch
            {
                Response.Write("Ocurri error debe cargar antes el archivo");
            }
        }


        protected void Button3_Click(object sender, EventArgs e)
        {

            servicioweb.WebServiceSoapClient servicio = new servicioweb.WebServiceSoapClient();


            if (DropDownList1.Text == "Empleado") {
                if (servicio.bulkinsert(lblOculto.Text))
                {

                    MessageBox.Show("error");
                }
                else
                {

                    MessageBox.Show("correcto");
                }
 
            
            
            }
            else if (DropDownList1.Text=="Impuesto"){
                if (servicio.bulkinsert_impuesto(lblOculto.Text))
                {

                    MessageBox.Show("error");
                }
                else
                {

                    MessageBox.Show("correcto");
                }
            
            
            
            }




        }


    }
}