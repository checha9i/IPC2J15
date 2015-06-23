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
              <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
              <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
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
              <asp:BoundField DataField="ID_Paquete" HeaderText="ID_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="ID_Paquete" />
              <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
              <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" Visible="False" />
              <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
              <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" Visible="False" />
              <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
              <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
              <asp:BoundField DataField="lote" HeaderText="lote" SortExpression="lote" />
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


  </p>
<p>


      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT * FROM [Paquete] WHERE ([usuario] = @usuario2)">
          <SelectParameters>
              <asp:SessionParameter Name="usuario2" SessionField="IDcliente" Type="Int32" />
          </SelectParameters>
      </asp:SqlDataSource>


  </p>
</asp:Content>
