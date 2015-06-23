using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace _IPC2_Fase2J15_201313819
{
    /// <summary>
    /// Descripción breve de WebService
    /// </summary>
    [WebService(Namespace = "http://Quetzal_Express.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {

    
    SqlConnection conexion = new SqlConnection();
    string mostrarError;

    public string MostrarEstado;

    public string MostrarError
    {
        get { return mostrarError; }
        set { mostrarError = value; }


    }

    //conectar con servidor
    [WebMethod]
    public bool conectarServidor()
    {
        bool respuesta = false;
        string cadenaConexion = @"Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True";
        try
        {
            conexion.Close();
            conexion.ConnectionString = cadenaConexion;
            conexion.Open();
            respuesta = true;
            MostrarEstado = "Conexion exitosa";
        }

        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "No se ha podido conectar " + e.Message.ToString();
        }


        return respuesta;
    }


    //Registro
    [WebMethod]
    public bool Registrar(string tabla, string campos, string valor)
    {
        bool respuesta = false;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "INSERT INTO " + tabla + "(" + campos + ") VALUES (" + valor + ");";
            conectarServidor();

            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }

        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }

        return respuesta;
    }

    //numero de Clinte a registrar

    [WebMethod]
    public int noClinte() {
       
        int cant = 0;
        Boolean respuesta;
         try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
              cm.CommandText = "SELECT COUNT(*) FROM Clientes;";
              conectarServidor();
              cant= Convert.ToInt32(cm.ExecuteScalar());
              if (conectarServidor())
              {
                  if (cm.ExecuteNonQuery() == 1)
                      respuesta = true;
                  else
                      respuesta = false;

              }
              else
              {
                  respuesta = false;
              }
        }
         catch (Exception e)
         {
             respuesta = false;
             MostrarError = "Erro: " + e.Message.ToString();
         }
         finally
         {
             conexion.Close();
         }
        return cant;
    }
  

 //busqueda por nombre
[WebMethod]
            public DataSet busqueda_nombre(string IDMask)
            {
                  IDMask = IDMask.Replace("'", "''");
//IDMask is the Customer ID that the client submits.
//Replace single quotation marks with two single quotation marks
//so that all single quotation marks in the CustomerID are parsed correctly.

//Modify this connection string to use your SQL Server and log on information.
SqlConnection con = new SqlConnection("Data Source=JAVIER;Initial Catalog=Whizz_Hard_Books;Integrated Security=True");

//Open the Customers table to serve as the parent table.
SqlDataAdapter daCust = new SqlDataAdapter("Select ID_Libro, Nombre,Autor, Existencia, Disponibles, Prestados, Reservados From Libro WHERE nombre Like '%" + IDMask + "%'", con);

//Create a client-side DataSet to hold the Customers and Orders tables.
DataSet ds=new DataSet();

//Explicitly open the connection to allow explicit closing.
con.Open();

//Fill the DataSet with the Customers table and the Orders table.
daCust.Fill(ds, "Libro");


//Explicitly close the connection - do not wait for garbage collection.
con.Close();



//Return the DataSet to the client.
return ds;
}



//busqueda por reservados
[WebMethod]
public DataSet reservados_consulta(string IDMask)
{
    IDMask = IDMask.Replace("'", "''");
    //IDMask is the Customer ID that the client submits.
    //Replace single quotation marks with two single quotation marks
    //so that all single quotation marks in the CustomerID are parsed correctly.

    //Modify this connection string to use your SQL Server and log on information.
    SqlConnection con = new SqlConnection("Data Source=JAVIER;Initial Catalog=Whizz_Hard_Books;Integrated Security=True");

    //Open the Customers table to serve as the parent table.
    SqlDataAdapter daCust = new SqlDataAdapter("Select Nombre,Autor, Existencia, Disponibles, Prestados, Reservados From Libro WHERE reservados>0 Order By ID_Libro DESC", con);
    
    //Create a client-side DataSet to hold the Customers and Orders tables.
    DataSet ds = new DataSet();

    //Explicitly open the connection to allow explicit closing.
    con.Open();

    //Fill the DataSet with the Customers table and the Orders table.
    daCust.Fill(ds, "Libro");


    //Explicitly close the connection - do not wait for garbage collection.
    con.Close();



    //Return the DataSet to the client.
    return ds;
}



















    //busqueda por autor
[WebMethod]
public DataSet busqueda_autor(string IDMask)
{
    IDMask = IDMask.Replace("'", "''");
    //IDMask is the Customer ID that the client submits.
    //Replace single quotation marks with two single quotation marks
    //so that all single quotation marks in the CustomerID are parsed correctly.

    //Modify this connection string to use your SQL Server and log on information.
    SqlConnection con = new SqlConnection("Data Source=JAVIER;Initial Catalog=Whizz_Hard_Books;Integrated Security=True");

    //Open the Customers table to serve as the parent table.
    SqlDataAdapter daCust = new SqlDataAdapter("Select ID_Libro, Nombre,Autor, Existencia, Disponibles, Prestados, Reservados From Libro WHERE Autor Like '%" + IDMask + "%'", con);

    //Create a client-side DataSet to hold the Customers and Orders tables.
    DataSet ds = new DataSet();

    //Explicitly open the connection to allow explicit closing.
    con.Open();

    //Fill the DataSet with the Customers table and the Orders table.
    daCust.Fill(ds, "Libro");


    //Explicitly close the connection - do not wait for garbage collection.
    con.Close();



    //Return the DataSet to the client.
    return ds;
}

    //busqueda inicial
[WebMethod]
public DataSet busqueda(string IDMask)
{
    IDMask = IDMask.Replace("'", "''");
    //IDMask is the Customer ID that the client submits.
    //Replace single quotation marks with two single quotation marks
    //so that all single quotation marks in the CustomerID are parsed correctly.

    //Modify this connection string to use your SQL Server and log on information.
    SqlConnection con = new SqlConnection("Data Source=JAVIER;Initial Catalog=Whizz_Hard_Books;Integrated Security=True");

    //Open the Customers table to serve as the parent table.
    SqlDataAdapter daCust = new SqlDataAdapter("Select * From Libro", con);

    //Create a client-side DataSet to hold the Customers and Orders tables.
    DataSet ds = new DataSet();

    //Explicitly open the connection to allow explicit closing.
    con.Open();

    //Fill the DataSet with the Customers table and the Orders table.
    daCust.Fill(ds, "Libro");


    //Explicitly close the connection - do not wait for garbage collection.
    con.Close();



    //Return the DataSet to the client.
    return ds;
}





    //tarjeta ya existente
[WebMethod]
public int busquetarjetaexiste(string notarjeta)
{

    int cant = 0;
    Boolean respuesta;
    try
    {
        SqlCommand cm = new SqlCommand();
        cm.Connection = conexion;
        cm.CommandText = "SELECT COUNT(No_Tarjeta) FROM Tarjeta where No_Tarjeta="+notarjeta;
        conectarServidor();
        cant = Convert.ToInt32(cm.ExecuteScalar());
        if (conectarServidor())
        {
            if (cm.ExecuteNonQuery() == 1)
                respuesta = true;
            else
                respuesta = false;

        }
        else
        {
            respuesta = false;
        }
    }
    catch (Exception e)
    {
        respuesta = false;
        MostrarError = "Erro: " + e.Message.ToString();
    }
    finally
    {
        conexion.Close();
    }
    return cant;
}

//Verificar Usuario
[WebMethod]
public int usuario_verificar(string username,string pass)
{

    int cant=0;
    Boolean respuesta;
    try
    {
        SqlCommand cm = new SqlCommand();
        cm.Connection = conexion;
        cm.CommandText = "SELECT COUNT(*) FROM Clientes where usuario='"+username+"' and contraseña='"+pass+"'";
        conectarServidor();
        cant = Convert.ToInt32(cm.ExecuteScalar());
        if (conectarServidor())
        {
            if (cm.ExecuteNonQuery() == 1)
                respuesta = true;
            else
                respuesta = false;

        }
        else
        {
            respuesta = false;
        }
    }
    catch (Exception e)
    {
        respuesta = false;
        MostrarError = "Erro: " + e.Message.ToString();
    }
    finally
    {
        conexion.Close();
    }
    return cant;
}

//Verificar empleado
[WebMethod]
public int empleado_verificar(string username, string pass,string rol)
{

    int cant = 0;
    Boolean respuesta;
    try
    {
        SqlCommand cm = new SqlCommand();
        cm.Connection = conexion;
        cm.CommandText = "SELECT COUNT(*) FROM Empleado where ID_Empleado='" + username + "' and contraseña='" + pass + "' and rol='"+rol+"'";
        conectarServidor();
        cant = Convert.ToInt32(cm.ExecuteScalar());
        if (conectarServidor())
        {
            if (cm.ExecuteNonQuery() == 1)
                respuesta = true;
            else
                respuesta = false;

        }
        else
        {
            respuesta = false;
        }
    }
    catch (Exception e)
    {
        respuesta = false;
        MostrarError = "Erro: " + e.Message.ToString();
    }
    finally
    {
        conexion.Close();
    }
    return cant;
}




//numero de Empleado a registrar

[WebMethod]
public int noEmpleado(string dpi)
{

    int cant = 0;
    Boolean respuesta;
    try
    {
        SqlCommand cm = new SqlCommand();
        cm.Connection = conexion;
        cm.CommandText = "SELECT ID_Empleado FROM Empleado where dpi='"+dpi+"';";
        conectarServidor();
        cant = Convert.ToInt32(cm.ExecuteScalar());
        if (conectarServidor())
        {
            if (cm.ExecuteNonQuery() == 1)
                respuesta = true;
            else
                respuesta = false;

        }
        else
        {
            respuesta = false;
        }
    }
    catch (Exception e)
    {
        respuesta = false;
        MostrarError = "Erro: " + e.Message.ToString();
    }
    finally
    {
        conexion.Close();
    }
    return cant;
}

//obtiene numero de sucursal
[WebMethod]
public int select_sucursal(string nombresucur)
{

    int cant = 0;
    Boolean respuesta;
    try
    {
        SqlCommand cm = new SqlCommand();
        cm.Connection = conexion;
        cm.CommandText = "SELECT ID_Sucursal FROM Sucursal where Nombre_Sucursal='" + nombresucur +"'";
        conectarServidor();
        cant = Convert.ToInt32(cm.ExecuteScalar());
        if (conectarServidor())
        {
            if (cm.ExecuteNonQuery() == 1)
                respuesta = true;
            else
                respuesta = false;

        }
        else
        {
            respuesta = false;
        }
    }
    catch (Exception e)
    {
        respuesta = false;
        MostrarError = "Erro: " + e.Message.ToString();
    }
    finally
    {
        conexion.Close();
    }
    return cant;
}

//obtiene numero de sucursal
[WebMethod]
public int verificar_depa(string nombredepa,int sucur)
{

    int cant = 0;
    Boolean respuesta;
    try
    {
        SqlCommand cm = new SqlCommand();
        cm.Connection = conexion;
        cm.CommandText = "SELECT ID_Departamento FROM Departamento where Nombre_depa='" + nombredepa +"' and ID_Sucursal='" +sucur+"'";
        conectarServidor();
        cant = Convert.ToInt32(cm.ExecuteScalar());
        if (conectarServidor())
        {
            if (cm.ExecuteNonQuery() == 1)
                respuesta = true;
            else
                respuesta = false;

        }
        else
        {
            respuesta = false;
        }
    }
    catch (Exception e)
    {
        respuesta = false;
        MostrarError = "Erro: " + e.Message.ToString();
    }
    finally
    {
        conexion.Close();
    }
    return cant;
}















    
    
    
    
    
    
    
    
    
    
    
    
    
   

   

    [WebMethod]
    public int id_cliente_sesion(string ID_Cliente)
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT ID_Cliente FROM Clientes WHERE usuario='" + ID_Cliente+"'";
            conectarServidor();
            cant = Convert.ToInt32(cm.ExecuteScalar());
            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }
        return cant;
    }


    [WebMethod]
    public int id_empleado_sesion(string ID_Empleado)
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT ID_Empleado FROM Empleado WHERE ID_Empleado='" + ID_Empleado+"'";
            conectarServidor();
            cant = Convert.ToInt32(cm.ExecuteScalar());
            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }
        return cant;
    }

    [WebMethod]
    public int id_administrador(string user,string password)
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT COUNT(*) FROM Administrador WHERE ID_Administrador='" + user +"' and contraseña='"+ password+"'";
            conectarServidor();
            cant = Convert.ToInt32(cm.ExecuteScalar());
            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }
        return cant;
    }
    [WebMethod]
    public int id_director(string user, string password)
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT COUNT(*) FROM Empleado WHERE ID_Empleado='" + user + "' and contraseña='" + password + "'";
            conectarServidor();
            cant = Convert.ToInt32(cm.ExecuteScalar());
            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }
        return cant;
    }




    [WebMethod]
    public int id_tipo()
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT tipo FROM sesion WHERE ID_sesion='" + 1 + "'";
            conectarServidor();
            cant = Convert.ToInt32(cm.ExecuteScalar());
            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }
        return cant;
    }


    [WebMethod]
    public int departamentodirector(string id_session)
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT ID_Depa FROM Empleado WHERE ID_Empleado='" + id_session + "'";
            conectarServidor();
            cant = Convert.ToInt32(cm.ExecuteScalar());
            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }
        return cant;
    }









    [WebMethod]
    public int id_sesion()
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT usuario FROM sesion WHERE ID_sesion='" + 1 + "'";
            conectarServidor();
            cant = Convert.ToInt32(cm.ExecuteScalar());
            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }
        return cant;
    }

    //csv empleado
    [WebMethod]
    public bool bulkinsert(string path)
    {
        bool respuesta = false;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "BULK INSERT dbo.Empleado FROM '" + path + "' WITH ( FIELDTERMINATOR = ',', ROWTERMINATOR = '\n' )";
            conectarServidor();
            
            
            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;
            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }

        return respuesta;
    }
    //csv impuestos
    [WebMethod]
    public bool bulkinsert_impuesto(string path)
    {
        bool respuesta = false;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "BULK INSERT dbo.Impuesto  FROM '" + path + "' WITH ( FIELDTERMINATOR = ',', ROWTERMINATOR = '\n' )";
            conectarServidor();
            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;
            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }
        return respuesta;
    }
        //fecha
    [WebMethod]
    public string fechahoy() {

       return DateTime.Now.ToString();
    }

    //Prestamo cambio en impuesto
    [WebMethod]
    public bool Update_Impuesto(string nombre, string valor)
    {
        bool respuesta = false;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "Update Impuesto Set valor='" + valor + "' Where Nombre='" + nombre + "' ";
            conectarServidor();

            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }

        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }

        return respuesta;
    }

    //Prestamo cambio en Comision
    [WebMethod]
    public bool Update_Comision(string nombre, string valor)
    {
        bool respuesta = false;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "Update Sede Set Comision='" + valor + "' Where Nombre_Pais='" + nombre + "' ";
            conectarServidor();

            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }

        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }

        return respuesta;
    }


    //Prestamo cambio en Comision
    [WebMethod]
    public bool Update_cobropeso(string nombre, string valor)
    {
        bool respuesta = false;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "Update Sede Set cobroPeso='" + valor + "' Where Nombre_Pais='" + nombre + "' ";
            conectarServidor();

            if (conectarServidor())
            {
                if (cm.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;

            }
            else
            {
                respuesta = false;
            }

        }
        catch (Exception e)
        {
            respuesta = false;
            MostrarError = "Erro: " + e.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }

        return respuesta;
    }



    ////Prestamo cambio en Comision
    //[WebMethod]
    //public bool(string valor,string tipo)
    //{
    //    bool respuesta = false;
    //    try
    //    {
    //        SqlCommand cm = new SqlCommand();
    //        cm.Connection = conexion;
    //        cm.CommandText = "Update sesion Set usuario='" + valor + "' Set tipo='"+tipo+"'"+" Where ID_sesion='1' ";
    //        conectarServidor();

    //        if (conectarServidor())
    //        {
    //            if (cm.ExecuteNonQuery() == 1)
    //                respuesta = true;
    //            else
    //                respuesta = false;

    //        }
    //        else
    //        {
    //            respuesta = false;
    //        }

    //    }
    //    catch (Exception e)
    //    {
    //        respuesta = false;
    //        MostrarError = "Erro: " + e.Message.ToString();
    //    }
    //    finally
    //    {
    //        conexion.Close();
    //    }

    //    return respuesta;
    //}


    
    
    
    }
    
}
