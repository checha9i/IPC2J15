<%@ Page Title="About" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="cargafactura.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.cargafactura" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>.<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID_Paquete" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="ID_Paquete" />
            <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
            <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
            <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
            <asp:BoundField DataField="fecha_cambio" HeaderText="fecha_cambio" SortExpression="fecha_cambio" />
            <asp:BoundField DataField="costo" HeaderText="costo" SortExpression="costo" />
            <asp:BoundField DataField="empleado" HeaderText="empleado" SortExpression="empleado" />
            <asp:BoundField DataField="autorizafac" HeaderText="autorizafac" SortExpression="autorizafac" />
            <asp:BoundField DataField="factura" HeaderText="factura" SortExpression="factura" />
            <asp:BoundField DataField="Sucursal_s" HeaderText="Sucursal_s" SortExpression="Sucursal_s" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT [ID_Paquete], [Peso_Lb], [Estado], [ValorFinal], [usuario], [lote], [fecha_cambio], [costo], [empleado], [autorizafac], [factura], [Sucursal_s] FROM [Paquete] WHERE ([autorizafac] = @autorizafac)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="autorizafac" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </h3>

    <p>.<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
    </p>
</asp:Content>
