﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.34209
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _IPC2_Fase2J15_201313819.servicioweb {
    using System.Data;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(Namespace="http://Quetzal_Express.org/", ConfigurationName="servicioweb.WebServiceSoap")]
    public interface WebServiceSoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/conectarServidor", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool conectarServidor();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/conectarServidor", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> conectarServidorAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/Registrar", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool Registrar(string tabla, string campos, string valor);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/Registrar", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> RegistrarAsync(string tabla, string campos, string valor);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/noClinte", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int noClinte();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/noClinte", ReplyAction="*")]
        System.Threading.Tasks.Task<int> noClinteAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/busqueda_nombre", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet busqueda_nombre(string IDMask);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/busqueda_nombre", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> busqueda_nombreAsync(string IDMask);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/reservados_consulta", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet reservados_consulta(string IDMask);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/reservados_consulta", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> reservados_consultaAsync(string IDMask);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/busqueda_autor", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet busqueda_autor(string IDMask);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/busqueda_autor", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> busqueda_autorAsync(string IDMask);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/busqueda", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet busqueda(string IDMask);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/busqueda", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> busquedaAsync(string IDMask);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/busquetarjetaexiste", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int busquetarjetaexiste(string notarjeta);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/busquetarjetaexiste", ReplyAction="*")]
        System.Threading.Tasks.Task<int> busquetarjetaexisteAsync(string notarjeta);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/usuario_verificar", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int usuario_verificar(string username, string pass);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/usuario_verificar", ReplyAction="*")]
        System.Threading.Tasks.Task<int> usuario_verificarAsync(string username, string pass);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/empleado_verificar", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int empleado_verificar(string username, string pass, string rol);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/empleado_verificar", ReplyAction="*")]
        System.Threading.Tasks.Task<int> empleado_verificarAsync(string username, string pass, string rol);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/noEmpleado", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int noEmpleado(string dpi);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/noEmpleado", ReplyAction="*")]
        System.Threading.Tasks.Task<int> noEmpleadoAsync(string dpi);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/select_sucursal", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int select_sucursal(string nombresucur);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/select_sucursal", ReplyAction="*")]
        System.Threading.Tasks.Task<int> select_sucursalAsync(string nombresucur);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/verificar_depa", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int verificar_depa(string nombredepa, int sucur);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/verificar_depa", ReplyAction="*")]
        System.Threading.Tasks.Task<int> verificar_depaAsync(string nombredepa, int sucur);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_cliente_sesion", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int id_cliente_sesion(string ID_Cliente);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_cliente_sesion", ReplyAction="*")]
        System.Threading.Tasks.Task<int> id_cliente_sesionAsync(string ID_Cliente);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_empleado_sesion", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int id_empleado_sesion(string ID_Empleado);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_empleado_sesion", ReplyAction="*")]
        System.Threading.Tasks.Task<int> id_empleado_sesionAsync(string ID_Empleado);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_administrador", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int id_administrador(string user, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_administrador", ReplyAction="*")]
        System.Threading.Tasks.Task<int> id_administradorAsync(string user, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_director", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int id_director(string user, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_director", ReplyAction="*")]
        System.Threading.Tasks.Task<int> id_directorAsync(string user, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_tipo", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int id_tipo();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_tipo", ReplyAction="*")]
        System.Threading.Tasks.Task<int> id_tipoAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/departamentodirector", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int departamentodirector(string id_session);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/departamentodirector", ReplyAction="*")]
        System.Threading.Tasks.Task<int> departamentodirectorAsync(string id_session);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_sesion", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int id_sesion();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/id_sesion", ReplyAction="*")]
        System.Threading.Tasks.Task<int> id_sesionAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/bulkinsert", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool bulkinsert(string path);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/bulkinsert", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> bulkinsertAsync(string path);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/bulkinsert_paquete", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool bulkinsert_paquete(string path);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/bulkinsert_paquete", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> bulkinsert_paqueteAsync(string path);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/bulkinsert_impuesto", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool bulkinsert_impuesto(string path);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/bulkinsert_impuesto", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> bulkinsert_impuestoAsync(string path);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/fechahoy", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        string fechahoy();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/fechahoy", ReplyAction="*")]
        System.Threading.Tasks.Task<string> fechahoyAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/Update_Impuesto", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool Update_Impuesto(string nombre, string valor);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/Update_Impuesto", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> Update_ImpuestoAsync(string nombre, string valor);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/Update_Comision", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool Update_Comision(string nombre, string valor);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/Update_Comision", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> Update_ComisionAsync(string nombre, string valor);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/Update_datos", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool Update_datos(string id, string tabla, string tipo, string datos);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/Update_datos", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> Update_datosAsync(string id, string tabla, string tipo, string datos);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/Update_cobropeso", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool Update_cobropeso(string nombre, string valor);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://Quetzal_Express.org/Update_cobropeso", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> Update_cobropesoAsync(string nombre, string valor);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface WebServiceSoapChannel : _IPC2_Fase2J15_201313819.servicioweb.WebServiceSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class WebServiceSoapClient : System.ServiceModel.ClientBase<_IPC2_Fase2J15_201313819.servicioweb.WebServiceSoap>, _IPC2_Fase2J15_201313819.servicioweb.WebServiceSoap {
        
        public WebServiceSoapClient() {
        }
        
        public WebServiceSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public WebServiceSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebServiceSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebServiceSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool conectarServidor() {
            return base.Channel.conectarServidor();
        }
        
        public System.Threading.Tasks.Task<bool> conectarServidorAsync() {
            return base.Channel.conectarServidorAsync();
        }
        
        public bool Registrar(string tabla, string campos, string valor) {
            return base.Channel.Registrar(tabla, campos, valor);
        }
        
        public System.Threading.Tasks.Task<bool> RegistrarAsync(string tabla, string campos, string valor) {
            return base.Channel.RegistrarAsync(tabla, campos, valor);
        }
        
        public int noClinte() {
            return base.Channel.noClinte();
        }
        
        public System.Threading.Tasks.Task<int> noClinteAsync() {
            return base.Channel.noClinteAsync();
        }
        
        public System.Data.DataSet busqueda_nombre(string IDMask) {
            return base.Channel.busqueda_nombre(IDMask);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> busqueda_nombreAsync(string IDMask) {
            return base.Channel.busqueda_nombreAsync(IDMask);
        }
        
        public System.Data.DataSet reservados_consulta(string IDMask) {
            return base.Channel.reservados_consulta(IDMask);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> reservados_consultaAsync(string IDMask) {
            return base.Channel.reservados_consultaAsync(IDMask);
        }
        
        public System.Data.DataSet busqueda_autor(string IDMask) {
            return base.Channel.busqueda_autor(IDMask);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> busqueda_autorAsync(string IDMask) {
            return base.Channel.busqueda_autorAsync(IDMask);
        }
        
        public System.Data.DataSet busqueda(string IDMask) {
            return base.Channel.busqueda(IDMask);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> busquedaAsync(string IDMask) {
            return base.Channel.busquedaAsync(IDMask);
        }
        
        public int busquetarjetaexiste(string notarjeta) {
            return base.Channel.busquetarjetaexiste(notarjeta);
        }
        
        public System.Threading.Tasks.Task<int> busquetarjetaexisteAsync(string notarjeta) {
            return base.Channel.busquetarjetaexisteAsync(notarjeta);
        }
        
        public int usuario_verificar(string username, string pass) {
            return base.Channel.usuario_verificar(username, pass);
        }
        
        public System.Threading.Tasks.Task<int> usuario_verificarAsync(string username, string pass) {
            return base.Channel.usuario_verificarAsync(username, pass);
        }
        
        public int empleado_verificar(string username, string pass, string rol) {
            return base.Channel.empleado_verificar(username, pass, rol);
        }
        
        public System.Threading.Tasks.Task<int> empleado_verificarAsync(string username, string pass, string rol) {
            return base.Channel.empleado_verificarAsync(username, pass, rol);
        }
        
        public int noEmpleado(string dpi) {
            return base.Channel.noEmpleado(dpi);
        }
        
        public System.Threading.Tasks.Task<int> noEmpleadoAsync(string dpi) {
            return base.Channel.noEmpleadoAsync(dpi);
        }
        
        public int select_sucursal(string nombresucur) {
            return base.Channel.select_sucursal(nombresucur);
        }
        
        public System.Threading.Tasks.Task<int> select_sucursalAsync(string nombresucur) {
            return base.Channel.select_sucursalAsync(nombresucur);
        }
        
        public int verificar_depa(string nombredepa, int sucur) {
            return base.Channel.verificar_depa(nombredepa, sucur);
        }
        
        public System.Threading.Tasks.Task<int> verificar_depaAsync(string nombredepa, int sucur) {
            return base.Channel.verificar_depaAsync(nombredepa, sucur);
        }
        
        public int id_cliente_sesion(string ID_Cliente) {
            return base.Channel.id_cliente_sesion(ID_Cliente);
        }
        
        public System.Threading.Tasks.Task<int> id_cliente_sesionAsync(string ID_Cliente) {
            return base.Channel.id_cliente_sesionAsync(ID_Cliente);
        }
        
        public int id_empleado_sesion(string ID_Empleado) {
            return base.Channel.id_empleado_sesion(ID_Empleado);
        }
        
        public System.Threading.Tasks.Task<int> id_empleado_sesionAsync(string ID_Empleado) {
            return base.Channel.id_empleado_sesionAsync(ID_Empleado);
        }
        
        public int id_administrador(string user, string password) {
            return base.Channel.id_administrador(user, password);
        }
        
        public System.Threading.Tasks.Task<int> id_administradorAsync(string user, string password) {
            return base.Channel.id_administradorAsync(user, password);
        }
        
        public int id_director(string user, string password) {
            return base.Channel.id_director(user, password);
        }
        
        public System.Threading.Tasks.Task<int> id_directorAsync(string user, string password) {
            return base.Channel.id_directorAsync(user, password);
        }
        
        public int id_tipo() {
            return base.Channel.id_tipo();
        }
        
        public System.Threading.Tasks.Task<int> id_tipoAsync() {
            return base.Channel.id_tipoAsync();
        }
        
        public int departamentodirector(string id_session) {
            return base.Channel.departamentodirector(id_session);
        }
        
        public System.Threading.Tasks.Task<int> departamentodirectorAsync(string id_session) {
            return base.Channel.departamentodirectorAsync(id_session);
        }
        
        public int id_sesion() {
            return base.Channel.id_sesion();
        }
        
        public System.Threading.Tasks.Task<int> id_sesionAsync() {
            return base.Channel.id_sesionAsync();
        }
        
        public bool bulkinsert(string path) {
            return base.Channel.bulkinsert(path);
        }
        
        public System.Threading.Tasks.Task<bool> bulkinsertAsync(string path) {
            return base.Channel.bulkinsertAsync(path);
        }
        
        public bool bulkinsert_paquete(string path) {
            return base.Channel.bulkinsert_paquete(path);
        }
        
        public System.Threading.Tasks.Task<bool> bulkinsert_paqueteAsync(string path) {
            return base.Channel.bulkinsert_paqueteAsync(path);
        }
        
        public bool bulkinsert_impuesto(string path) {
            return base.Channel.bulkinsert_impuesto(path);
        }
        
        public System.Threading.Tasks.Task<bool> bulkinsert_impuestoAsync(string path) {
            return base.Channel.bulkinsert_impuestoAsync(path);
        }
        
        public string fechahoy() {
            return base.Channel.fechahoy();
        }
        
        public System.Threading.Tasks.Task<string> fechahoyAsync() {
            return base.Channel.fechahoyAsync();
        }
        
        public bool Update_Impuesto(string nombre, string valor) {
            return base.Channel.Update_Impuesto(nombre, valor);
        }
        
        public System.Threading.Tasks.Task<bool> Update_ImpuestoAsync(string nombre, string valor) {
            return base.Channel.Update_ImpuestoAsync(nombre, valor);
        }
        
        public bool Update_Comision(string nombre, string valor) {
            return base.Channel.Update_Comision(nombre, valor);
        }
        
        public System.Threading.Tasks.Task<bool> Update_ComisionAsync(string nombre, string valor) {
            return base.Channel.Update_ComisionAsync(nombre, valor);
        }
        
        public bool Update_datos(string id, string tabla, string tipo, string datos) {
            return base.Channel.Update_datos(id, tabla, tipo, datos);
        }
        
        public System.Threading.Tasks.Task<bool> Update_datosAsync(string id, string tabla, string tipo, string datos) {
            return base.Channel.Update_datosAsync(id, tabla, tipo, datos);
        }
        
        public bool Update_cobropeso(string nombre, string valor) {
            return base.Channel.Update_cobropeso(nombre, valor);
        }
        
        public System.Threading.Tasks.Task<bool> Update_cobropesoAsync(string nombre, string valor) {
            return base.Channel.Update_cobropesoAsync(nombre, valor);
        }
    }
}
