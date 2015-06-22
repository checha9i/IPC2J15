<%@ Page Title="ConsultarPaquete" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConsultarPaquete.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ConsultarPaquete" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2J15ConnectionString %>" SelectCommand="SELECT [Peso_Lb], [Estado], [ValorFinal], [lote] FROM [Paquete] WHERE ([usuario] = @usuario)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtnombre" Name="usuario" PropertyName="Text" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>
    </h2>
    <h3>Consultar Paquete&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="txtnombre" runat="server" Text="Label"></asp:Label>
    </h3>
   
                      
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                    <asp:BoundField DataField="ValorFinal" HeaderText="ValorFinal" SortExpression="ValorFinal" />
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
        </asp:Content>
