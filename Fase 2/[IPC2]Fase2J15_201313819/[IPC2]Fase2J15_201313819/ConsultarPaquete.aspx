<%@ Page Title="ConsultarPaquete" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConsultarPaquete.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ConsultarPaquete" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
    </h2>
  <p>


      Seleccione para ver Perfil Individual<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Paquete" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:CommandField ShowSelectButton="True" />
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


  </p>
<p>


      Perfil Individual</p>
    <p>


      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_Paquete" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:CommandField ShowSelectButton="True" />
              <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="ID_Paquete" />
              <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" Visible="False" />
              <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" Visible="False" />
              <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
              <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" Visible="False" />
              <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
              <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
              <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
              <asp:BoundField DataField="fecha_cambio" HeaderText="fecha_cambio" SortExpression="fecha_cambio" />
              <asp:BoundField DataField="costo" HeaderText="costo" SortExpression="costo" />
              <asp:BoundField DataField="empleado" HeaderText="empleado" SortExpression="empleado" />
              <asp:BoundField DataField="Sucursal_s" HeaderText="Sucursal_s" SortExpression="Sucursal_s" />
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
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT * FROM [Paquete] WHERE ([ID_Paquete] = @ID_Paquete)">
          <SelectParameters>
              <asp:ControlParameter ControlID="TextBox1" Name="ID_Paquete" PropertyName="Text" Type="Int32" />
          </SelectParameters>
      </asp:SqlDataSource>


        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Subir" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>


  </p>
<p>


      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT * FROM [Paquete] WHERE ([usuario] = @usuario2)">
          <SelectParameters>
              <asp:SessionParameter Name="usuario2" SessionField="IDcliente" Type="Int32" />
          </SelectParameters>
      </asp:SqlDataSource>


  </p>
</asp:Content>
