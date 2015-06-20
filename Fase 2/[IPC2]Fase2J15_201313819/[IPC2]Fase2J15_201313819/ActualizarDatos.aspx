<%@ Page Title="Actualizar Datos" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ActualizarDatos.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ActualizarDatos" %>
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
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
          
            <br />
            <asp:SqlDataSource ID="Actualizar" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Clientes] WHERE [ID_Cliente] = @ID_Cliente" InsertCommand="INSERT INTO [Clientes] ([ID_Cliente], [DPI], [Nombre], [Apellido], [NIT], [Telefono], [Direccion], [Tarjeta], [usuario], [contraseña], [Aprobacion]) VALUES (@ID_Cliente, @DPI, @Nombre, @Apellido, @NIT, @Telefono, @Direccion, @Tarjeta, @usuario, @contraseña, @Aprobacion)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Clientes] WHERE ([ID_Cliente] = @ID_Cliente)" UpdateCommand="UPDATE [Clientes] SET [DPI] = @DPI, [Nombre] = @Nombre, [Apellido] = @Apellido, [NIT] = @NIT, [Telefono] = @Telefono, [Direccion] = @Direccion, [Tarjeta] = @Tarjeta, [usuario] = @usuario, [contraseña] = @contraseña, [Aprobacion] = @Aprobacion WHERE [ID_Cliente] = @ID_Cliente">
                <DeleteParameters>
                    <asp:Parameter Name="ID_Cliente" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID_Cliente" Type="Int32" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="NIT" Type="Int32" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="Tarjeta" Type="Int32" />
                    <asp:Parameter Name="usuario" Type="String" />
                    <asp:Parameter Name="contraseña" Type="String" />
                    <asp:Parameter Name="Aprobacion" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="ID_Cliente" SessionField="UserName" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="NIT" Type="Int32" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="Tarjeta" Type="Int32" />
                    <asp:Parameter Name="usuario" Type="String" />
                    <asp:Parameter Name="contraseña" Type="String" />
                    <asp:Parameter Name="Aprobacion" Type="String" />
                    <asp:Parameter Name="ID_Cliente" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

            <table style="width:100%;">
                <tr>
                    <td style="height: 20px">&nbsp;</td>
                    <td style="height: 20px">Editar Datos</td>
                    <td style="height: 20px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 20px"></td>
                    <td style="height: 20px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Cliente" DataSourceID="Actualizar" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="ID_Cliente" HeaderText="ID_Cliente" SortExpression="ID_Cliente" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                    <asp:BoundField DataField="Tarjeta" HeaderText="Tarjeta" SortExpression="Tarjeta" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
<asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña"></asp:BoundField>
                    <asp:BoundField DataField="Aprobacion" HeaderText="Aprobacion" SortExpression="Aprobacion" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
                    </td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Para cambiar su tarjeta primero agregela</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BorderColor="Black" CellPadding="4" DataKeyNames="No_Tarjeta" DataSourceID="tarjeta" DefaultMode="Insert" ForeColor="#333333" Height="50px" Width="125px" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                            <EditRowStyle BackColor="#999999" />
                            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="No_Tarjeta" HeaderText="No_Tarjeta" ReadOnly="True" SortExpression="No_Tarjeta" />
                                <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                                <asp:BoundField DataField="Nombre_Propietario" HeaderText="Nombre_Propietario" SortExpression="Nombre_Propietario" />
                                <asp:CommandField ShowInsertButton="True" />
                            </Fields>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="tarjeta" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Tarjeta] WHERE [No_Tarjeta] = @No_Tarjeta" InsertCommand="INSERT INTO [Tarjeta] ([No_Tarjeta], [Tipo], [Nombre_Propietario]) VALUES (@No_Tarjeta, @Tipo, @Nombre_Propietario)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Tarjeta]" UpdateCommand="UPDATE [Tarjeta] SET [Tipo] = @Tipo, [Nombre_Propietario] = @Nombre_Propietario WHERE [No_Tarjeta] = @No_Tarjeta">
                            <DeleteParameters>
                                <asp:Parameter Name="No_Tarjeta" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="No_Tarjeta" Type="Int32" />
                                <asp:Parameter Name="Tipo" Type="String" />
                                <asp:Parameter Name="Nombre_Propietario" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Tipo" Type="String" />
                                <asp:Parameter Name="Nombre_Propietario" Type="String" />
                                <asp:Parameter Name="No_Tarjeta" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>

                        <div class="form-group">


                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>

    </div>
</asp:Content>
