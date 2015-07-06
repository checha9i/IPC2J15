<%@ Page  Title="Gestion de Paquetes" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="GestionPaquetes.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.Gestion_de_Paquetes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<table style="width:100%;">
        <tr>
            <td style="width: 447px; height: 33px;">
            </td>
            <td style="height: 33px">
            </td>
          
        </tr>
        <tr>
            <td style="width: 447px">Peso</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
          
        </tr>
        <tr>
            <td style="width: 447px">Impuesto</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Categorias" DataTextField="Nombre" DataValueField="Nombre">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Categorias" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT [Nombre] FROM [Impuesto]"></asp:SqlDataSource>
            </td>
          
        </tr>
        <tr>
            <td style="width: 447px">Usuario</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
          
        </tr>
        <tr>
            <td style="width: 447px">Lote</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Lotes" DataTextField="fecha_salida" DataValueField="fecha_salida">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Lotes" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT [fecha_salida] FROM [Lote]"></asp:SqlDataSource>
            </td>
          
        </tr>
        <tr>
            <td style="width: 447px">Costo</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
          
        </tr>
        <tr>
            <td style="width: 447px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" />
            </td>
          
        </tr>
        <tr>
            <td style="width: 447px">&nbsp;</td>
            <td>
                &nbsp;</td>
          
        </tr>
        <tr>
            <td style="width: 447px">
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID_Paquete" DataSourceID="paquetes" DefaultMode="Insert" Height="50px" Width="125px">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="ID_Paquete" />
                        <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                        <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                        <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
                        <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                        <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
                        <asp:BoundField DataField="fecha_cambio" HeaderText="fecha_cambio" SortExpression="fecha_cambio" />
                        <asp:BoundField DataField="costo" HeaderText="costo" SortExpression="costo" />
                        <asp:BoundField DataField="empleado" HeaderText="empleado" SortExpression="empleado" />
                        <asp:BoundField DataField="Sucursal_s" HeaderText="Sucursal_s" SortExpression="Sucursal_s" />
                        <asp:BoundField DataField="factura" HeaderText="factura" SortExpression="factura" />
                        <asp:BoundField DataField="autorizafac" HeaderText="autorizafac" SortExpression="autorizafac" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="paquetes" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" DeleteCommand="DELETE FROM [Paquete] WHERE [ID_Paquete] = @ID_Paquete" InsertCommand="INSERT INTO [Paquete] ([Peso_Lb], [Impuesto], [Estado], [Comision], [ValorFinal], [usuario], [lote], [fecha_cambio], [costo], [empleado], [Sucursal_s], [factura], [autorizafac]) VALUES (@Peso_Lb, @Impuesto, @Estado, @Comision, @ValorFinal, @usuario, @lote, @fecha_cambio, @costo, @empleado, @Sucursal_s, @factura, @autorizafac)" SelectCommand="SELECT * FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Peso_Lb] = @Peso_Lb, [Impuesto] = @Impuesto, [Estado] = @Estado, [Comision] = @Comision, [ValorFinal] = @ValorFinal, [usuario] = @usuario, [lote] = @lote, [fecha_cambio] = @fecha_cambio, [costo] = @costo, [empleado] = @empleado, [Sucursal_s] = @Sucursal_s, [factura] = @factura, [autorizafac] = @autorizafac WHERE [ID_Paquete] = @ID_Paquete">
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
                        <asp:Parameter Name="fecha_cambio" Type="String" />
                        <asp:Parameter Name="costo" Type="Double" />
                        <asp:Parameter Name="empleado" Type="Int32" />
                        <asp:Parameter Name="Sucursal_s" Type="Int32" />
                        <asp:Parameter Name="factura" Type="String" />
                        <asp:Parameter Name="autorizafac" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Peso_Lb" Type="Double" />
                        <asp:Parameter Name="Impuesto" Type="Int32" />
                        <asp:Parameter Name="Estado" Type="String" />
                        <asp:Parameter Name="Comision" Type="Int32" />
                        <asp:Parameter Name="ValorFinal" Type="Double" />
                        <asp:Parameter Name="usuario" Type="Int32" />
                        <asp:Parameter Name="lote" Type="Int32" />
                        <asp:Parameter Name="fecha_cambio" Type="String" />
                        <asp:Parameter Name="costo" Type="Double" />
                        <asp:Parameter Name="empleado" Type="Int32" />
                        <asp:Parameter Name="Sucursal_s" Type="Int32" />
                        <asp:Parameter Name="factura" Type="String" />
                        <asp:Parameter Name="autorizafac" Type="Int32" />
                        <asp:Parameter Name="ID_Paquete" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
          
        </tr>
        <tr>
            <td style="width: 447px">&nbsp;</td>
            <td>
                &nbsp;</td>
          
        </tr>
        <tr>
            <td style="width: 447px"><br />
            </td>
            <td>
                &nbsp;</td>
          
        </tr>
        <tr>
            <td style="width: 447px">Agregar Lote<br />
                <br />
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID_Lote" DataSourceID="AgregarLote" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ID_Lote" HeaderText="ID_Lote" InsertVisible="False" ReadOnly="True" SortExpression="ID_Lote" />
                        <asp:BoundField DataField="fecha_salida" HeaderText="fecha_salida" SortExpression="fecha_salida" />
                        <asp:BoundField DataField="fecha_envio" HeaderText="fecha_envio" SortExpression="fecha_envio" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="AgregarLote" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" DeleteCommand="DELETE FROM [Lote] WHERE [ID_Lote] = @ID_Lote" InsertCommand="INSERT INTO [Lote] ([fecha_salida], [fecha_envio]) VALUES (@fecha_salida, @fecha_envio)" SelectCommand="SELECT * FROM [Lote]" UpdateCommand="UPDATE [Lote] SET [fecha_salida] = @fecha_salida, [fecha_envio] = @fecha_envio WHERE [ID_Lote] = @ID_Lote">
                    <DeleteParameters>
                        <asp:Parameter Name="ID_Lote" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="fecha_salida" Type="String" />
                        <asp:Parameter Name="fecha_envio" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="fecha_salida" Type="String" />
                        <asp:Parameter Name="fecha_envio" Type="String" />
                        <asp:Parameter Name="ID_Lote" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        
        </tr>
        <tr>
            <td style="width: 447px">&nbsp;</td>
            <td>&nbsp;</td>
        
        </tr>
        <tr>
            <td style="width: 447px">&nbsp;</td>
            <td>&nbsp;</td>
        
        </tr>
        <tr>
       
    </h2>
    


</asp:Content>