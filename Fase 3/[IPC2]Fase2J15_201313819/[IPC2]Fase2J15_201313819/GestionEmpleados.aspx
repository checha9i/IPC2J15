<%@ Page Title="About" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="GestionEmpleados.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.GestionEmpleados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
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
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="ID_Empleado" HeaderText="ID_Empleado" InsertVisible="False" ReadOnly="True" SortExpression="ID_Empleado" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                        <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" SortExpression="Domicilio" />
                        <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="ID_Depa" HeaderText="ID_Depa" SortExpression="ID_Depa" Visible="False" />
                        <asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña" />
                        <asp:BoundField DataField="rol" HeaderText="rol" SortExpression="rol" Visible="False" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:BoundField DataField="ID_Sede" HeaderText="ID_Sede" SortExpression="ID_Sede" Visible="False" />
                        <asp:BoundField DataField="ID_Sucursal" HeaderText="ID_Sucursal" SortExpression="ID_Sucursal" Visible="False" />
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
                <asp:SqlDataSource ID="Consultar" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT * FROM [Empleado] WHERE ([ID_Sede] = @ID_Sede)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox8" Name="ID_Sede" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
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
            <td style="width: 471px">Estado
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 471px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Despedir" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
    </p>
</asp:Content>