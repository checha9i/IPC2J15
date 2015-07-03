<%@ Page Title="Actualizar Administrador" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="ActualizarAdministrador.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ActualizarAdministrador" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="ID_Administrador" HeaderText="ID_Administrador" InsertVisible="False" ReadOnly="True" SortExpression="ID_Administrador" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                    <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" SortExpression="Domicilio" />
                    <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña" />
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
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT * FROM [Administrador] WHERE ([ID_Administrador] = @ID_Administrador)">
        <SelectParameters>
            <asp:SessionParameter Name="ID_Administrador" SessionField="UserName" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>
