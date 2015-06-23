<%@ Page Title="CargaCSV" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="csvdirector.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.csvdirector" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   


    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Subir" />
    
        <asp:Button ID="Button2" runat="server" Text="Vista Previa" 
            onclick="Button2_Click" />
    
    <asp:Label ID="lblOculto" runat="server" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GridView1" runat="server" Height="251px" Width="420px" CellPadding="4" ForeColor="#333333" GridLines="None">
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
  



        &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  



        <asp:Button runat="server" Text="Guardar a Base de Datos" 
            onclick="Button3_Click" />




</asp:Content>

