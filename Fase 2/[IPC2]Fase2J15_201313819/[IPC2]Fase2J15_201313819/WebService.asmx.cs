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
public int empleado_verificar(string username, string pass)
{

    int cant = 0;
    Boolean respuesta;
    try
    {
        SqlCommand cm = new SqlCommand();
        cm.Connection = conexion;
        cm.CommandText = "SELECT COUNT(*) FROM Empleado where ID_Empleado='" + username + "' and contraseña='" + pass + "'";
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
public int noEmpleado()
{

    int cant = 0;
    Boolean respuesta;
    try
    {
        SqlCommand cm = new SqlCommand();
        cm.Connection = conexion;
        cm.CommandText = "SELECT COUNT(*) FROM Empleado;";
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














    //numero de libros  top
    [WebMethod]
    public int top(string libro)
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT topprestados FROM Libro where ID_Libro=" + libro;
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

    
    
    
    
    
    
    
    
    
    
    
    
    
    //numero de libros prestados
    [WebMethod]
    public int prestamos(string libro)
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT (prestados) FROM Libro where ID_Libro="+libro;
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

    //numero de libros reservados
    [WebMethod]
    public int Reservados(string libro)
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT (Reservados) FROM Libro where ID_Libro=" + libro;
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
    public int id_sesion()
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT usuario FROM sesion WHERE ID_sesion='1'";
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



    //fecha
    [WebMethod]
    public string fechahoy() {

       return DateTime.Now.ToString();
    }



    //reservas cambio en libro
    [WebMethod]
    public bool Update_sesion(int usuario)
    {
        bool respuesta = false;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "Update sesion Set usuario='" + usuario + "' Where ID_sesion='"+1+"'";
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


    //cantidad prestamos cliente
    [WebMethod]
    public bool Update_clientes(string tabla,  int prestamos, string cliente)
    {
        bool respuesta = false;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "Update Clientes Set n_prestamos =" + prestamos+ " Where Carnet="+cliente;
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


    //numero de prestamo
    [WebMethod]
    public int nprestamo()
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT COUNT(*) FROM Prestamos;";
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



    //Seleccionar prestamo para devolucion
    [WebMethod]
    public int select_prestamo(string carnet,string libro)
    {

        int cant = 0;
        Boolean respuesta;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "SELECT (ID_Prestamo) FROM Prestamos where ID_Libro=" + libro+" and carnet="+carnet;
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




    //update al prestamo para devolver
    [WebMethod]
    public bool Update_devolucion(int prestamo,string fecha)
    {
        bool respuesta = false;
        try
        {
            SqlCommand cm = new SqlCommand();
            cm.Connection = conexion;
            cm.CommandText = "Update Prestamos Set fecha_devolucion='"+ fecha +"' Where ID_Prestamo=" + prestamo;
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







    //busqueda por autor
    [WebMethod]
    public DataSet busqueda_masvendidos()
    {

        //IDMask is the Customer ID that the client submits.
        //Replace single quotation marks with two single quotation marks
        //so that all single quotation marks in the CustomerID are parsed correctly.

        //Modify this connection string to use your SQL Server and log on information.
        SqlConnection con = new SqlConnection("Data Source=JAVIER;Initial Catalog=Whizz_Hard_Books;Integrated Security=True");

        //Open the Customers table to serve as the parent table.
        SqlDataAdapter daCust = new SqlDataAdapter("SELECT ID_Libro, Nombre,Autor, Existencia, Disponibles, Prestados, Reservados,topprestados FROM Libro ORDER BY topprestados Desc", con);

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

    
    
    
    
    
    }
    
}
