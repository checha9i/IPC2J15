<%@ Page Title="Actualizar Datos Director" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="ActualizarDirector.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ActualizarDirector" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Empleado" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
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
                    <asp:BoundField DataField="rol" HeaderText="rol" SortExpression="rol" Visible="False" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" DeleteCommand="DELETE FROM [Empleado] WHERE [ID_Empleado] = @ID_Empleado" InsertCommand="INSERT INTO [Empleado] ([Nombre], [Apellido], [Telefono], [Sueldo], [Domicilio], [DPI], [Correo], [ID_Depa], [contraseña], [rol]) VALUES (@Nombre, @Apellido, @Telefono, @Sueldo, @Domicilio, @DPI, @Correo, @ID_Depa, @contraseña, @rol)" SelectCommand="SELECT * FROM [Empleado] WHERE ([ID_Empleado] = @ID_Empleado)" UpdateCommand="UPDATE [Empleado] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Sueldo] = @Sueldo, [Domicilio] = @Domicilio, [DPI] = @DPI, [Correo] = @Correo, [ID_Depa] = @ID_Depa, [contraseña] = @contraseña, [rol] = @rol WHERE [ID_Empleado] = @ID_Empleado">
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
            <asp:Parameter Name="rol" Type="String" />
            <asp:Parameter Name="ID_Empleado" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
