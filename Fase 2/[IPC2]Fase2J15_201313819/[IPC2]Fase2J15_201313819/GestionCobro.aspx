<%@ Page Title="Gestion de Cobros" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestionCobro.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.GestionCobro" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
<h3>Agregar Cobro</h3>
      <table>  <tr>
            <td style="width: 225px"><h3>Agregar Impuesto</h3></td>
            <td style="width: 321px" class="modal-sm"><h3>Agregar Comision y Peso</h3></td>
            <td style="width: 281px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 225px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID_Impuesto" DataSourceID="AgregarImpuesto" DefaultMode="Insert" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="ID_Impuesto" HeaderText="ID_Impuesto" InsertVisible="False" ReadOnly="True" SortExpression="ID_Impuesto" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="AgregarImpuesto" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Impuesto] WHERE [ID_Impuesto] = @ID_Impuesto" InsertCommand="INSERT INTO [Impuesto] ([Nombre], [valor]) VALUES (@Nombre, @valor)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Impuesto]" UpdateCommand="UPDATE [Impuesto] SET [Nombre] = @Nombre, [valor] = @valor WHERE [ID_Impuesto] = @ID_Impuesto">
                    <DeleteParameters>
                        <asp:Parameter Name="ID_Impuesto" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="valor" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="valor" Type="String" />
                        <asp:Parameter Name="ID_Impuesto" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 321px" class="modal-sm">
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="ID_Sede" DataSourceID="AgregarComision" DefaultMode="Insert" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="ID_Sede" HeaderText="ID_Sede" ReadOnly="True" SortExpression="ID_Sede" Visible="False" />
                        <asp:BoundField DataField="Nombre_Pais" HeaderText="Nombre_Pais" SortExpression="Nombre_Pais" />
                        <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                        <asp:BoundField DataField="cobroPeso" HeaderText="cobroPeso" SortExpression="cobroPeso" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="AgregarComision" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Sede] WHERE [ID_Sede] = @ID_Sede" InsertCommand="INSERT INTO [Sede] ([ID_Sede], [Nombre_Pais], [Comision], [cobroPeso]) VALUES (@ID_Sede, @Nombre_Pais, @Comision, @cobroPeso)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Sede]" UpdateCommand="UPDATE [Sede] SET [Nombre_Pais] = @Nombre_Pais, [Comision] = @Comision, [cobroPeso] = @cobroPeso WHERE [ID_Sede] = @ID_Sede">
                    <DeleteParameters>
                        <asp:Parameter Name="ID_Sede" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID_Sede" Type="Int32" />
                        <asp:Parameter Name="Nombre_Pais" Type="String" />
                        <asp:Parameter Name="Comision" Type="Double" />
                        <asp:Parameter Name="cobroPeso" Type="Double" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre_Pais" Type="String" />
                        <asp:Parameter Name="Comision" Type="Double" />
                        <asp:Parameter Name="cobroPeso" Type="Double" />
                        <asp:Parameter Name="ID_Sede" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 281px">&nbsp;</td>
        </tr>
        </table>
    <h3>Modificar Cobro</h3>
    
    <table style="width:100%;">
        <tr>
            <td style="width: 218px; height: 31px;"><h3>Modificar Impuesto</h3></td>
            <td style="width: 329px; height: 31px;"><h3>Modificar Comision y Peso</h3></td>
            
        </tr>
        <tr>
            <td style="width: 218px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Impuesto" DataSourceID="ModificarImpuesto">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ID_Impuesto" HeaderText="ID_Impuesto" InsertVisible="False" ReadOnly="True" SortExpression="ID_Impuesto" Visible="False" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="ModificarImpuesto" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Impuesto] WHERE [ID_Impuesto] = @ID_Impuesto" InsertCommand="INSERT INTO [Impuesto] ([Nombre], [valor]) VALUES (@Nombre, @valor)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Impuesto]" UpdateCommand="UPDATE [Impuesto] SET [Nombre] = @Nombre, [valor] = @valor WHERE [ID_Impuesto] = @ID_Impuesto">
                    <DeleteParameters>
                        <asp:Parameter Name="ID_Impuesto" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="valor" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="valor" Type="String" />
                        <asp:Parameter Name="ID_Impuesto" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 329px">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Sede" DataSourceID="ModificarComision">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ID_Sede" HeaderText="ID_Sede" InsertVisible="False" ReadOnly="True" SortExpression="ID_Sede" Visible="False" />
                        <asp:BoundField DataField="Nombre_Pais" HeaderText="Nombre_Pais" SortExpression="Nombre_Pais" />
                        <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                        <asp:BoundField DataField="cobroPeso" HeaderText="cobroPeso" SortExpression="cobroPeso" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="ModificarComision" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Sede] WHERE [ID_Sede] = @ID_Sede" InsertCommand="INSERT INTO [Sede] ([Nombre_Pais], [Comision], [cobroPeso]) VALUES (@Nombre_Pais, @Comision, @cobroPeso)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Sede]" UpdateCommand="UPDATE [Sede] SET [Nombre_Pais] = @Nombre_Pais, [Comision] = @Comision, [cobroPeso] = @cobroPeso WHERE [ID_Sede] = @ID_Sede">
                    <DeleteParameters>
                        <asp:Parameter Name="ID_Sede" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre_Pais" Type="String" />
                        <asp:Parameter Name="Comision" Type="Double" />
                        <asp:Parameter Name="cobroPeso" Type="Double" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre_Pais" Type="String" />
                        <asp:Parameter Name="Comision" Type="Double" />
                        <asp:Parameter Name="cobroPeso" Type="Double" />
                        <asp:Parameter Name="ID_Sede" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            
        </tr>
        <tr>
            <td style="width: 218px">&nbsp;</td>
            <td style="width: 329px">&nbsp;</td>
            
        </tr>
        </table>
    
   





</asp:Content>
