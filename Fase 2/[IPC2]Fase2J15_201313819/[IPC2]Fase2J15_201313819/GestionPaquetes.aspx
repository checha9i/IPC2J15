<%@ Page  Title="Gestion de Paquetes" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="GestionPaquetes.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.Gestion_de_Paquetes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<table style="width:100%;">
        <tr>
            <td style="width: 447px">Agregar Paquete<br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID_Paquete" DataSourceID="AgregarPaquete" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="ID_Paquete" Visible="False" />
                        <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                        <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                        <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
                        <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                        <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="AgregarPaquete" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" DeleteCommand="DELETE FROM [Paquete] WHERE [ID_Paquete] = @ID_Paquete" InsertCommand="INSERT INTO [Paquete] ([Peso_Lb], [Impuesto], [Estado], [Comision], [ValorFinal], [usuario], [lote]) VALUES (@Peso_Lb, @Impuesto, @Estado, @Comision, @ValorFinal, @usuario, @lote)" SelectCommand="SELECT * FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Peso_Lb] = @Peso_Lb, [Impuesto] = @Impuesto, [Estado] = @Estado, [Comision] = @Comision, [ValorFinal] = @ValorFinal, [usuario] = @usuario, [lote] = @lote WHERE [ID_Paquete] = @ID_Paquete">
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
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_Lote" DataSourceID="AgregarLote" ForeColor="Black" OnRowCommand="GridView1_RowCommand" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="ID_Lote" HeaderText="ID_Lote" ReadOnly="True" SortExpression="ID_Lote" InsertVisible="False" />
                        <asp:BoundField DataField="fecha_salida" HeaderText="fecha_salida" SortExpression="fecha_salida" />
                        <asp:BoundField DataField="fecha_envio" HeaderText="fecha_envio" SortExpression="fecha_envio" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
          
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
            <td>Cambiar Estado de Paquete<br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_Paquete" DataSourceID="AgregarPaquete" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="ID_Paquete" />
                        <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                        <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" Visible="False" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" Visible="False" />
                        <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
                        <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                        <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
        
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