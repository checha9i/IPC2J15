<%@ Page Title="Actualizar Datos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizarDatos.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ActualizarDatos" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Cree una cuenta nueva.</h4>
        <hr />

        <div class="form-group">

            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Actualizar">
                <Columns>
                    <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                    <asp:BoundField DataField="Tarjeta" HeaderText="Tarjeta" SortExpression="Tarjeta" />
                    <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Telefono2" HeaderText="Telefono2" SortExpression="Telefono2" />
                    <asp:BoundField DataField="Telefono3" HeaderText="Telefono3" SortExpression="Telefono3" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Actualizar" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DPI], [Nombre], [Apellido], [Direccion], [Tarjeta], [NIT], [Telefono], [Telefono2], [Telefono3] FROM [Clientes] WHERE ([usuario] = @usuario)">
                <SelectParameters>
                    <asp:SessionParameter Name="usuario" SessionField="UserName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />

        </div>

                        <div class="form-group">


                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>

    </div>
</asp:Content>
