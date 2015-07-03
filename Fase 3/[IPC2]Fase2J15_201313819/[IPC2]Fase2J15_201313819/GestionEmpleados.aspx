<%@ Page Title="About" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="GestionEmpleados.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.GestionEmpleados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </h2>
    <h3>Your application description page.</h3>

    <p>Use this area to provide additional information.<table style="width:100%;">
        <tr>
            <td style="width: 471px">Consultar Equipo</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 471px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_Empleado" DataSourceID="Consultar" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="ID_Empleado" HeaderText="ID_Empleado" InsertVisible="False" ReadOnly="True" SortExpression="ID_Empleado" Visible="False" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                        <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" SortExpression="Domicilio" />
                        <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="ID_Depa" HeaderText="ID_Depa" SortExpression="ID_Depa" Visible="False" />
                        <asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña" Visible="False" />
                        <asp:BoundField DataField="rol" HeaderText="rol" SortExpression="rol" Visible="False" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="Consultar" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Empleado] WHERE [ID_Empleado] = @ID_Empleado" InsertCommand="INSERT INTO [Empleado] ([Nombre], [Apellido], [Telefono], [Sueldo], [Domicilio], [DPI], [Correo], [ID_Depa], [contraseña], [rol]) VALUES (@Nombre, @Apellido, @Telefono, @Sueldo, @Domicilio, @DPI, @Correo, @ID_Depa, @contraseña, @rol)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Empleado] WHERE ([ID_Depa] = @ID_Depa)" UpdateCommand="UPDATE [Empleado] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Sueldo] = @Sueldo, [Domicilio] = @Domicilio, [DPI] = @DPI, [Correo] = @Correo, [ID_Depa] = @ID_Depa, [contraseña] = @contraseña, [rol] = @rol WHERE [ID_Empleado] = @ID_Empleado">
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
                        <asp:Parameter Name="rol" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="ID_Depa" PropertyName="Text" Type="Int32" />
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
                        <asp:Parameter Name="rol" Type="String" />
                        <asp:Parameter Name="ID_Empleado" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 471px">Perfil Individual</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 471px">Nombre<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 471px; height: 20px">Apellido<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 471px">Telefono<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 471px">Sueldo<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 471px">Domicilio<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 471px; height: 65px">DPI<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="width: 471px">Correo<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 471px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
    </p>
</asp:Content>