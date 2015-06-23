<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ActualizarEmpleado.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ActualizarEmpleado" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

    <div class="form-horizontal">
        <hr />

        <div class="form-group">

            <br />
          
            <br />
            <asp:SqlDataSource ID="Actualizar" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Empleado] WHERE [ID_Empleado] = @ID_Empleado" InsertCommand="INSERT INTO [Empleado] ([Nombre], [Apellido], [Telefono], [Sueldo], [Domicilio], [DPI], [Correo], [ID_Depa], [contraseña]) VALUES (@Nombre, @Apellido, @Telefono, @Sueldo, @Domicilio, @DPI, @Correo, @ID_Depa, @contraseña)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Empleado] WHERE ([ID_Empleado] = @ID_Empleado)" UpdateCommand="UPDATE [Empleado] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Sueldo] = @Sueldo, [Domicilio] = @Domicilio, [DPI] = @DPI, [Correo] = @Correo, [ID_Depa] = @ID_Depa, [contraseña] = @contraseña WHERE [ID_Empleado] = @ID_Empleado">
                <DeleteParameters>
                    <asp:Parameter Name="ID_Empleado" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Sueldo" Type="Double" />
                    <asp:Parameter Name="Domicilio" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="ID_Depa" Type="Int32" />
                    <asp:Parameter Name="contraseña" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="ID_Empleado" SessionField="UserName" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Sueldo" Type="Double" />
                    <asp:Parameter Name="Domicilio" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="ID_Depa" Type="Int32" />
                    <asp:Parameter Name="contraseña" Type="String" />
                    <asp:Parameter Name="ID_Empleado" Type="Int32" />
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Empleado" DataSourceID="Actualizar" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="ID_Empleado" HeaderText="ID_Empleado" SortExpression="ID_Empleado" ReadOnly="True" Visible="False" InsertVisible="False" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                    <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" SortExpression="Domicilio" />
                    <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:BoundField DataField="ID_Depa" HeaderText="ID_Depa" SortExpression="ID_Depa" Visible="False" />
<asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña"></asp:BoundField>
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
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>

                        <div class="form-group">


                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>

    </div>
</asp:Content>
