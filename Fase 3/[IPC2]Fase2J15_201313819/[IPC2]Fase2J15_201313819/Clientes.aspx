<%@ Page Title="Clientes" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.Clientes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
            <table style="width: 100%; height: 196px;">
                <tr>
                    <td style="width: 200px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-size: small" Text="Consulta de Paquetes" Width="183px" />
                    </td>
                    <td style="width: 203px">
                        <asp:Button ID="Button3" runat="server" style="font-size: small" Text="Cotización" OnClick="Button3_Click" />
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Peso_Lb], [ID_Paquete], [lote], [usuario], [ValorFinal] FROM [Paquete] WHERE ([ID_Paquete] = @ID_Paquete)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtnombre" Name="ID_Paquete" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px; height: 33px;">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="font-size: small" Text="Edición de Perfil" Width="110px" />
                    </td>
                    <td style="width: 203px; height: 33px;">
                    </td>
                    <td style="height: 33px"></td>
                </tr>
                <tr>
                    <td style="width: 200px"><strong>
                        <asp:Label ID="txtnombre" runat="server" style="color: #0066CC"></asp:Label>
                        </strong></td>
                    <td style="width: 203px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        <p style="height: 40px">
            &nbsp;</p>
        <p style="height: 29px">
            <asp:Label ID="lbmensaje" runat="server" style="color: #FF3300"></asp:Label>
        </p>
        <p style="height: 326px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_Paquete" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="font-size: small; margin-right: 0px;" UseAccessibleHeader="False" Height="275px" Visible="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" SortExpression="ID_Paquete" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                    <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
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
        <p style="height: 287px">
            <asp:Label ID="lbmostrarproducto" runat="server" style="color: #0033CC" Visible="False"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Nombre], [Peso_Lb], [Valor_Costo], [Comision], [Valor_final], [TipoImpuesto], [Stock], [UsuarioC], [EstadoP], [Categoria], [Cod_Sede]) VALUES (@Cod_Paquete, @Nombre, @Peso_Lb, @Valor_Costo, @Comision, @Valor_final, @TipoImpuesto, @Stock, @UsuarioC, @EstadoP, @Categoria, @Cod_Sede)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Paquete] WHERE ([Cod_Paquete] = @Cod_Paquete)" UpdateCommand="UPDATE [Paquete] SET [Nombre] = @Nombre, [Peso_Lb] = @Peso_Lb, [Valor_Costo] = @Valor_Costo, [Comision] = @Comision, [Valor_final] = @Valor_final, [TipoImpuesto] = @TipoImpuesto, [Stock] = @Stock, [UsuarioC] = @UsuarioC, [EstadoP] = @EstadoP, [Categoria] = @Categoria, [Cod_Sede] = @Cod_Sede WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Peso_Lb" Type="Double" />
                    <asp:Parameter Name="original_Valor_Costo" Type="Double" />
                    <asp:Parameter Name="original_Comision" Type="Double" />
                    <asp:Parameter Name="original_Valor_final" Type="Double" />
                    <asp:Parameter Name="original_TipoImpuesto" Type="String" />
                    <asp:Parameter Name="original_Stock" Type="Int32" />
                    <asp:Parameter Name="original_UsuarioC" Type="String" />
                    <asp:Parameter Name="original_EstadoP" Type="String" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                    <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_Paquete" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Peso_Lb" Type="Double" />
                    <asp:Parameter Name="Valor_Costo" Type="Double" />
                    <asp:Parameter Name="Comision" Type="Double" />
                    <asp:Parameter Name="Valor_final" Type="Double" />
                    <asp:Parameter Name="TipoImpuesto" Type="String" />
                    <asp:Parameter Name="Stock" Type="Int32" />
                    <asp:Parameter Name="UsuarioC" Type="String" />
                    <asp:Parameter Name="EstadoP" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter Name="Cod_Sede" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbmostrarproducto" Name="Cod_Paquete" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Peso_Lb" Type="Double" />
                    <asp:Parameter Name="Valor_Costo" Type="Double" />
                    <asp:Parameter Name="Comision" Type="Double" />
                    <asp:Parameter Name="Valor_final" Type="Double" />
                    <asp:Parameter Name="TipoImpuesto" Type="String" />
                    <asp:Parameter Name="Stock" Type="Int32" />
                    <asp:Parameter Name="UsuarioC" Type="String" />
                    <asp:Parameter Name="EstadoP" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter Name="Cod_Sede" Type="Int32" />
                    <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Peso_Lb" Type="Double" />
                    <asp:Parameter Name="original_Valor_Costo" Type="Double" />
                    <asp:Parameter Name="original_Comision" Type="Double" />
                    <asp:Parameter Name="original_Valor_final" Type="Double" />
                    <asp:Parameter Name="original_TipoImpuesto" Type="String" />
                    <asp:Parameter Name="original_Stock" Type="Int32" />
                    <asp:Parameter Name="original_UsuarioC" Type="String" />
                    <asp:Parameter Name="original_EstadoP" Type="String" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                    <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" style="font-size: small" Visible="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="TipoImpuesto" HeaderText="TipoImpuesto" SortExpression="TipoImpuesto" />
                    <asp:BoundField DataField="EstadoP" HeaderText="EstadoP" SortExpression="EstadoP" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:DynamicField DataField="Valor_final" HeaderText="Valor_final" />
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
        <p style="height: 37px">&nbsp;</p>
    </div>

</asp:Content>