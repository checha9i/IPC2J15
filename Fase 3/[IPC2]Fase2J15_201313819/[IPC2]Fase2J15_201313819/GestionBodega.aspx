<%@ Page Title="Gestion De Bodega" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="GestionBodega.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.GestionBodega" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

          <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Subir" />
    
        <asp:Button ID="Button2" runat="server" Text="Vista Previa" 
            onclick="Button2_Click" />
    
    <asp:Label ID="lblOculto" runat="server" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GridView2" runat="server" Height="251px" Width="420px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
  



    <p>Cambiar Estado del Paquete, si el estado es Enviado y no se recibio, cambiar estado a Perdido</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_Paquete" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="ID_Paquete" />
                <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" Visible="False" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" Visible="False" />
                <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
                <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" Visible="False" />
                <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
                <asp:BoundField DataField="fecha_cambio" HeaderText="fecha_cambio" SortExpression="fecha_cambio" />
                <asp:BoundField DataField="costo" HeaderText="costo" SortExpression="costo" />
                <asp:BoundField DataField="empleado" HeaderText="empleado" SortExpression="empleado" />
                <asp:BoundField DataField="Sucursal_s" HeaderText="Sucursal_s" SortExpression="Sucursal_s" />
                <asp:ImageField DataImageUrlField="factura" DataImageUrlFormatString="~/{0}" HeaderText="Factura">
                </asp:ImageField>
                <asp:BoundField DataField="autorizafac" HeaderText="autorizafac" SortExpression="autorizafac" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" DeleteCommand="DELETE FROM [Paquete] WHERE [ID_Paquete] = @ID_Paquete" InsertCommand="INSERT INTO [Paquete] ([Peso_Lb], [Impuesto], [Estado], [Comision], [ValorFinal], [usuario], [lote]) VALUES (@Peso_Lb, @Impuesto, @Estado, @Comision, @ValorFinal, @usuario, @lote)" SelectCommand="SELECT * FROM [Paquete] WHERE (([Estado] = @Estado) AND ([Estado] = @Estado2))" UpdateCommand="UPDATE [Paquete] SET [Peso_Lb] = @Peso_Lb, [Impuesto] = @Impuesto, [Estado] = @Estado, [Comision] = @Comision, [ValorFinal] = @ValorFinal, [usuario] = @usuario, [lote] = @lote WHERE [ID_Paquete] = @ID_Paquete" OnSelecting="SqlDataSource1_Selecting">
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
                <asp:Parameter DefaultValue="Enviado" Name="Estado" Type="String" />
                <asp:Parameter DefaultValue="enviado" Name="Estado2" Type="String" />
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
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_Paquete" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnRowCommand="GridView3_RowCommand">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="ID_Paquete" />
                <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
                <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
                <asp:BoundField DataField="costo" HeaderText="costo" SortExpression="costo" />
                <asp:BoundField DataField="Sucursal_s" HeaderText="Sucursal_s" SortExpression="Sucursal_s" />
                <asp:BoundField DataField="empleado" HeaderText="empleado" SortExpression="empleado" />
                <asp:ImageField DataImageUrlField="factura" DataImageUrlFormatString="~/{0}" HeaderText="Factura">
                </asp:ImageField>
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" DeleteCommand="DELETE FROM [Paquete] WHERE [ID_Paquete] = @ID_Paquete" InsertCommand="INSERT INTO [Paquete] ([Peso_Lb], [Estado], [ValorFinal], [usuario], [lote], [costo], [Sucursal_s], [empleado], [factura]) VALUES (@Peso_Lb, @Estado, @ValorFinal, @usuario, @lote, @costo, @Sucursal_s, @empleado, @factura)" SelectCommand="SELECT [ID_Paquete], [Peso_Lb], [Estado], [ValorFinal], [usuario], [lote], [costo], [Sucursal_s], [empleado], [factura] FROM [Paquete] WHERE ([autorizafac] = @autorizafac)" UpdateCommand="UPDATE [Paquete] SET [Peso_Lb] = @Peso_Lb, [Estado] = @Estado, [ValorFinal] = @ValorFinal, [usuario] = @usuario, [lote] = @lote, [costo] = @costo, [Sucursal_s] = @Sucursal_s, [empleado] = @empleado, [factura] = @factura WHERE [ID_Paquete] = @ID_Paquete">
            <DeleteParameters>
                <asp:Parameter Name="ID_Paquete" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Peso_Lb" Type="Double" />
                <asp:Parameter Name="Estado" Type="String" />
                <asp:Parameter Name="ValorFinal" Type="Double" />
                <asp:Parameter Name="usuario" Type="Int32" />
                <asp:Parameter Name="lote" Type="Int32" />
                <asp:Parameter Name="costo" Type="Double" />
                <asp:Parameter Name="Sucursal_s" Type="Int32" />
                <asp:Parameter Name="empleado" Type="Int32" />
                <asp:Parameter Name="factura" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="autorizafac" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Peso_Lb" Type="Double" />
                <asp:Parameter Name="Estado" Type="String" />
                <asp:Parameter Name="ValorFinal" Type="Double" />
                <asp:Parameter Name="usuario" Type="Int32" />
                <asp:Parameter Name="lote" Type="Int32" />
                <asp:Parameter Name="costo" Type="Double" />
                <asp:Parameter Name="Sucursal_s" Type="Int32" />
                <asp:Parameter Name="empleado" Type="Int32" />
                <asp:Parameter Name="factura" Type="String" />
                <asp:Parameter Name="ID_Paquete" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="VAlidar Cambio" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    </asp:Content>
