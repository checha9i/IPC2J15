<%@ Page Title="Servicio al Cliente" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ServicioCliente.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ServicioCliente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

  
            <table style="width: 100%; height: 38px;">
                <tr>
                    <td style="width: 29px">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT * FROM [Clientes] ORDER BY [Aprobacion]" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Clientes] WHERE [ID_Cliente] = @original_ID_Cliente" InsertCommand="INSERT INTO [Clientes] ([ID_Cliente], [DPI], [Nombre], [Apellido], [NIT], [Telefono], [Direccion], [Tarjeta], [usuario], [contraseña], [Aprobacion], [Casilla]) VALUES (@ID_Cliente, @DPI, @Nombre, @Apellido, @NIT, @Telefono, @Direccion, @Tarjeta, @usuario, @contraseña, @Aprobacion, @Casilla)" UpdateCommand="UPDATE [Clientes] SET [DPI] = @DPI, [Nombre] = @Nombre, [Apellido] = @Apellido, [NIT] = @NIT, [Telefono] = @Telefono, [Direccion] = @Direccion, [Tarjeta] = @Tarjeta, [usuario] = @usuario, [contraseña] = @contraseña, [Aprobacion] = @Aprobacion, [Casilla] = @Casilla WHERE [ID_Cliente] = @original_ID_Cliente">
                            <DeleteParameters>
                                <asp:Parameter Name="original_ID_Cliente" Type="Int32" />
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
                                <asp:Parameter Name="Aprobacion" Type="Int32" />
                                <asp:Parameter Name="Casilla" Type="Int32" />
                            </InsertParameters>
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
                                <asp:Parameter Name="Aprobacion" Type="Int32" />
                                <asp:Parameter Name="Casilla" Type="Int32" />
                                <asp:Parameter Name="original_ID_Cliente" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 188px">
                        Aprobar cliente</td>
                    <td>
                        <br />
                        <asp:Label ID="lbmensaje" runat="server" style="color: #FF3300" Width="100%"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>

        <p style="height: 33px">
            Una vesz autorizado Asigne numero de casilla</p>
        <p style="height: 193px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="font-size: small; width: 518px; height: 156px; left: 45px; top: 455px; " DataKeyNames="ID_Cliente" OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ID_Cliente" HeaderText="ID_Cliente" SortExpression="ID_Cliente" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                    <asp:BoundField DataField="Tarjeta" HeaderText="Tarjeta" SortExpression="Tarjeta" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" Visible="False" />
                    <asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña" />
                    <asp:BoundField DataField="Aprobacion" HeaderText="Aprobacion" SortExpression="Aprobacion" />
                    <asp:BoundField DataField="Casilla" HeaderText="Casilla" SortExpression="Casilla" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <strong>
            <asp:Label ID="Label1" runat="server" style="width: 517px; height: 23px; left: 53px; top: 423px; font-size: small; " Text="Para Autorizar Cliente en vez de &quot;0&quot; coloque un &quot;1&quot; o viceversa en el campo Aprobacion"></asp:Label>
            </strong>
        </p>

        <p style="height: 264px">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 123px">
                        <asp:Label ID="Label2" runat="server" Text="NoCasilla"></asp:Label>
                    </td>
                    <td style="width: 207px">
                        <asp:TextBox ID="txtcasilla" runat="server" Height="35px" style="font-size: medium"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btfactura" runat="server" OnClick="btfactura_Click" style="font-size: small" Text="Facturar" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 123px">
                        <asp:TextBox ID="lbusuarios" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td style="width: 207px">
                        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT * FROM [Paquete] WHERE ([usuario] = @usuario)" DeleteCommand="DELETE FROM [Paquete] WHERE [ID_Paquete] = @ID_Paquete" InsertCommand="INSERT INTO [Paquete] ([Peso_Lb], [Impuesto], [Estado], [Comision], [ValorFinal], [usuario], [lote]) VALUES (@Peso_Lb, @Impuesto, @Estado, @Comision, @ValorFinal, @usuario, @lote)" UpdateCommand="UPDATE [Paquete] SET [Peso_Lb] = @Peso_Lb, [Impuesto] = @Impuesto, [Estado] = @Estado, [Comision] = @Comision, [ValorFinal] = @ValorFinal, [usuario] = @usuario, [lote] = @lote WHERE [ID_Paquete] = @ID_Paquete">
                            <DeleteParameters>
                                <asp:Parameter Name="ID_Paquete" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Peso_Lb" Type="Double" />
                                <asp:Parameter Name="Impuesto" Type="Int32" />
                                <asp:Parameter Name="Estado" Type="String" />
                                <asp:Parameter Name="Comision" Type="Int32" />
                                <asp:Parameter Name="ValorFinal" Type="Double" />
                                <asp:Parameter Name="usuario" Type="Int32" />
                                <asp:Parameter Name="lote" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbusuarios" Name="usuario" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Peso_Lb" Type="Double" />
                                <asp:Parameter Name="Impuesto" Type="Int32" />
                                <asp:Parameter Name="Estado" Type="String" />
                                <asp:Parameter Name="Comision" Type="Int32" />
                                <asp:Parameter Name="ValorFinal" Type="Double" />
                                <asp:Parameter Name="usuario" Type="Int32" />
                                <asp:Parameter Name="lote" Type="Int32" />
                                <asp:Parameter Name="ID_Paquete" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 123px">&nbsp;</td>
                    <td style="width: 207px">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="font-size: small" Text="Facturar" />
                        <asp:TextBox ID="lbnombre" runat="server" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="lbfactura" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:GridView ID="gvpaquetes" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvpaquetes_SelectedIndexChanged" style="font-size: small" Width="183px" DataKeyNames="ID_Paquete" OnRowCommand="gvpaquetes_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" SortExpression="ID_Paquete" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" Visible="False" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                    <asp:BoundField DataField="Comision" HeaderText="sede" SortExpression="Comision" />
                    <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                    <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </p>
        <p style="height: 234px">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 222px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 222px">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" style="font-size: small" DataKeyNames="ID_Paquete">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" SortExpression="ID_Paquete" InsertVisible="False" ReadOnly="True" />
                                <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                                <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" />
                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                                <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
                                <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                                <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </td>
                    <td style="width: 192px"><strong>
                        <asp:Label ID="Label3" runat="server" style="font-size: medium" Text="Autorizados para Devolución"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="lbdireccion" runat="server" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="lbapellido" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 222px">&nbsp;</td>
                    <td style="width: 192px">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT * FROM [Paquete] WHERE ([Estado] = @Estado)" DeleteCommand="DELETE FROM [Paquete] WHERE [ID_Paquete] = @ID_Paquete" InsertCommand="INSERT INTO [Paquete] ([Peso_Lb], [Impuesto], [Estado], [Comision], [ValorFinal], [usuario], [lote]) VALUES (@Peso_Lb, @Impuesto, @Estado, @Comision, @ValorFinal, @usuario, @lote)" UpdateCommand="UPDATE [Paquete] SET [Peso_Lb] = @Peso_Lb, [Impuesto] = @Impuesto, [Estado] = @Estado, [Comision] = @Comision, [ValorFinal] = @ValorFinal, [usuario] = @usuario, [lote] = @lote WHERE [ID_Paquete] = @ID_Paquete">
                <DeleteParameters>
                    <asp:Parameter Name="ID_Paquete" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Peso_Lb" Type="Double" />
                    <asp:Parameter Name="Impuesto" Type="Int32" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="Comision" Type="Int32" />
                    <asp:Parameter Name="ValorFinal" Type="Double" />
                    <asp:Parameter Name="usuario" Type="Int32" />
                    <asp:Parameter Name="lote" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Pagado" Name="Estado" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Peso_Lb" Type="Double" />
                    <asp:Parameter Name="Impuesto" Type="Int32" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="Comision" Type="Int32" />
                    <asp:Parameter Name="ValorFinal" Type="Double" />
                    <asp:Parameter Name="usuario" Type="Int32" />
                    <asp:Parameter Name="lote" Type="Int32" />
                    <asp:Parameter Name="ID_Paquete" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p style="height: 47px">&nbsp;</p>
        <table style="width: 100%;">
            <tr>
                <td style="width: 170px"><strong>
                    <asp:Label ID="Label4" runat="server" style="font-size: medium" Text="Buscar Cliente"></asp:Label>
                    </strong></td>
                <td style="width: 201px">
                    <asp:TextBox ID="txtbuscar" runat="server" Height="26px" OnTextChanged="txtbuscar_TextChanged" style="font-size: medium" Width="163px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="font-size: medium" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td style="width: 170px"></td>
                <td style="width: 201px"></td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 170px">
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT [ID_Cliente], [DPI], [Nombre], [Apellido], [NIT], [Telefono], [usuario], [Casilla] FROM [Clientes] WHERE ([usuario] = @usuario)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtbuscar" Name="usuario" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td style="width: 201px">
                    <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="#333333" GridLines="None" Height="180px" style="font-size: small" Width="355px" DataKeyNames="ID_Cliente">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID_Cliente" HeaderText="ID_Cliente" SortExpression="ID_Cliente" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                            <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                            <asp:BoundField DataField="Casilla" HeaderText="Casilla" SortExpression="Casilla" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>&nbsp;</p>
        <br />
        <br />
        <br />
    
</asp:Content>
