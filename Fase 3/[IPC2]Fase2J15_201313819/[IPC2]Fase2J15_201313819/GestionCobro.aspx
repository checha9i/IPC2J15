<%@ Page Title="Gestion de Cobros" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="GestionCobro.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.GestionCobro" %>
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
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID_Impuesto" DataSourceID="AgregarImpuesto" DefaultMode="Insert" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ID_Impuesto" HeaderText="ID_Impuesto" InsertVisible="False" ReadOnly="True" SortExpression="ID_Impuesto" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
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
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="ID_Sede" DataSourceID="AgregarComision" DefaultMode="Insert" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ID_Sede" HeaderText="ID_Sede" ReadOnly="True" SortExpression="ID_Sede" Visible="False" />
                        <asp:BoundField DataField="Nombre_Pais" HeaderText="Nombre_Pais" SortExpression="Nombre_Pais" />
                        <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                        <asp:BoundField DataField="cobroPeso" HeaderText="cobroPeso" SortExpression="cobroPeso" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
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
            <td style="width: 329px; height: 31px;"><h3>Modificar Comision o Peso</h3></td>
            
        </tr>
        <tr>
            <td style="width: 218px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Impuesto" DataSourceID="ModificarImpuesto" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="ID_Impuesto" HeaderText="ID_Impuesto" InsertVisible="False" ReadOnly="True" SortExpression="ID_Impuesto" Visible="False" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
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
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Sede" DataSourceID="ModificarComision" Width="289px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="ID_Sede" HeaderText="ID_Sede" InsertVisible="False" ReadOnly="True" SortExpression="ID_Sede" Visible="False" />
                        <asp:BoundField DataField="Nombre_Pais" HeaderText="Nombre_Pais" SortExpression="Nombre_Pais" />
                        <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                        <asp:BoundField DataField="cobroPeso" HeaderText="cobroPeso" SortExpression="cobroPeso" />
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
                <asp:SqlDataSource ID="ModificarComision" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Sede] WHERE [ID_Sede] = @original_ID_Sede AND (([Nombre_Pais] = @original_Nombre_Pais) OR ([Nombre_Pais] IS NULL AND @original_Nombre_Pais IS NULL)) AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND (([cobroPeso] = @original_cobroPeso) OR ([cobroPeso] IS NULL AND @original_cobroPeso IS NULL))" InsertCommand="INSERT INTO [Sede] ([Nombre_Pais], [Comision], [cobroPeso]) VALUES (@Nombre_Pais, @Comision, @cobroPeso)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Sede]" UpdateCommand="UPDATE [Sede] SET [Nombre_Pais] = @Nombre_Pais, [Comision] = @Comision, [cobroPeso] = @cobroPeso WHERE [ID_Sede] = @original_ID_Sede AND (([Nombre_Pais] = @original_Nombre_Pais) OR ([Nombre_Pais] IS NULL AND @original_Nombre_Pais IS NULL)) AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND (([cobroPeso] = @original_cobroPeso) OR ([cobroPeso] IS NULL AND @original_cobroPeso IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID_Sede" Type="Int32" />
                        <asp:Parameter Name="original_Nombre_Pais" Type="String" />
                        <asp:Parameter Name="original_Comision" Type="Int32" />
                        <asp:Parameter Name="original_cobroPeso" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre_Pais" Type="String" />
                        <asp:Parameter Name="Comision" Type="Int32" />
                        <asp:Parameter Name="cobroPeso" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre_Pais" Type="String" />
                        <asp:Parameter Name="Comision" Type="Int32" />
                        <asp:Parameter Name="cobroPeso" Type="Int32" />
                        <asp:Parameter Name="original_ID_Sede" Type="Int32" />
                        <asp:Parameter Name="original_Nombre_Pais" Type="String" />
                        <asp:Parameter Name="original_Comision" Type="Int32" />
                        <asp:Parameter Name="original_cobroPeso" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            
        </tr>
        <tr>
            <td style="width: 218px"><h3>Inhabilitar Impuesto</h3></td>
            <td style="width: 329px"><h3>Inhabilitar Comision o Peso</h3></td>
            
        </tr>
        <tr>
            <td style="width: 218px">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Impuesto" DataSourceID="ModificarImpuesto" OnRowCommand="GridView3_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID_Impuesto" HeaderText="ID_Impuesto" InsertVisible="False" ReadOnly="True" SortExpression="ID_Impuesto" Visible="False" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
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
                <asp:SqlDataSource ID="ModificarImpuesto0" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Impuesto] WHERE [ID_Impuesto] = @original_ID_Impuesto AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([valor] = @original_valor) OR ([valor] IS NULL AND @original_valor IS NULL))" InsertCommand="INSERT INTO [Impuesto] ([Nombre], [valor]) VALUES (@Nombre, @valor)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Impuesto]" UpdateCommand="UPDATE [Impuesto] SET [Nombre] = @Nombre, [valor] = @valor WHERE [ID_Impuesto] = @original_ID_Impuesto AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([valor] = @original_valor) OR ([valor] IS NULL AND @original_valor IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID_Impuesto" Type="Int32" />
                        <asp:Parameter Name="original_Nombre" Type="String" />
                        <asp:Parameter Name="original_valor" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="valor" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="valor" Type="Int32" />
                        <asp:Parameter Name="original_ID_Impuesto" Type="Int32" />
                        <asp:Parameter Name="original_Nombre" Type="String" />
                        <asp:Parameter Name="original_valor" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 329px">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Sede" DataSourceID="ModificarComision" Width="289px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView4_RowCommand">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID_Sede" HeaderText="ID_Sede" InsertVisible="False" ReadOnly="True" SortExpression="ID_Sede" Visible="False" />
                        <asp:BoundField DataField="Nombre_Pais" HeaderText="Nombre_Pais" SortExpression="Nombre_Pais" />
                        <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                        <asp:BoundField DataField="cobroPeso" HeaderText="cobroPeso" SortExpression="cobroPeso" />
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
                <asp:SqlDataSource ID="ModificarComision0" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" DeleteCommand="DELETE FROM [Sede] WHERE [ID_Sede] = @ID_Sede" InsertCommand="INSERT INTO [Sede] ([Nombre_Pais], [Comision], [cobroPeso]) VALUES (@Nombre_Pais, @Comision, @cobroPeso)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Sede]" UpdateCommand="UPDATE [Sede] SET [Nombre_Pais] = @Nombre_Pais, [Comision] = @Comision, [cobroPeso] = @cobroPeso WHERE [ID_Sede] = @ID_Sede">
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
            <td style="width: 218px">Nombre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 329px">Nombre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 218px">Impuesto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="width: 329px">Comision&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 218px; height: 26px;">&nbsp;</td>
            <td style="width: 329px; height: 26px;">Cobro por Peso<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 218px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>
            <td style="width: 329px">
                <asp:Button ID="Button2" runat="server" Text="Comision" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="CobroPeso" OnClick="Button3_Click" />
            </td>
            
        </tr>
        </table>
    
   





</asp:Content>
