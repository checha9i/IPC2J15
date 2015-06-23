<%@ Page Title="Actualizar Datos" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ActualizarDatos.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ActualizarDatos" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Cliente" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
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
                    <asp:BoundField DataField="Aprobacion" HeaderText="Aprobacion" SortExpression="Aprobacion" Visible="False" />
                    <asp:BoundField DataField="Casilla" HeaderText="Casilla" SortExpression="Casilla" Visible="False" />
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
    <br />
    Para cambiar tarjeta primero agregela<br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="No_Tarjeta" DataSourceID="SqlDataSource2" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" DeleteCommand="DELETE FROM [Tarjeta] WHERE [No_Tarjeta] = @No_Tarjeta" InsertCommand="INSERT INTO [Tarjeta] ([No_Tarjeta], [Tipo], [Nombre_Propietario]) VALUES (@No_Tarjeta, @Tipo, @Nombre_Propietario)" SelectCommand="SELECT * FROM [Tarjeta]" UpdateCommand="UPDATE [Tarjeta] SET [Tipo] = @Tipo, [Nombre_Propietario] = @Nombre_Propietario WHERE [No_Tarjeta] = @No_Tarjeta">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" DeleteCommand="DELETE FROM [Clientes] WHERE [ID_Cliente] = @ID_Cliente" InsertCommand="INSERT INTO [Clientes] ([ID_Cliente], [DPI], [Nombre], [Apellido], [NIT], [Telefono], [Direccion], [Tarjeta], [usuario], [contraseña], [Aprobacion], [Casilla]) VALUES (@ID_Cliente, @DPI, @Nombre, @Apellido, @NIT, @Telefono, @Direccion, @Tarjeta, @usuario, @contraseña, @Aprobacion, @Casilla)" SelectCommand="SELECT * FROM [Clientes] WHERE ([ID_Cliente] = @ID_Cliente)" UpdateCommand="UPDATE [Clientes] SET [DPI] = @DPI, [Nombre] = @Nombre, [Apellido] = @Apellido, [NIT] = @NIT, [Telefono] = @Telefono, [Direccion] = @Direccion, [Tarjeta] = @Tarjeta, [usuario] = @usuario, [contraseña] = @contraseña, [Aprobacion] = @Aprobacion, [Casilla] = @Casilla WHERE [ID_Cliente] = @ID_Cliente">
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
            <asp:Parameter Name="Aprobacion" Type="Int32" />
            <asp:Parameter Name="Casilla" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ID_Cliente" SessionField="IDcliente" Type="Int32" />
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
            <asp:Parameter Name="Aprobacion" Type="Int32" />
            <asp:Parameter Name="Casilla" Type="Int32" />
            <asp:Parameter Name="ID_Cliente" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

