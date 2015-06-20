<%@ Page Title="Cotizacion" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cotizacion.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.Cotizacion" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Costo del Paquete"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Peso en Lbs."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:Label ID="Label4" runat="server" Text="Seleccione Categoria"></asp:Label>
            </td>
            <td style="height: 21px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Impuestos" DataTextField="Nombre" DataValueField="Nombre" Font-Size="Medium" Height="80px" Width="315px">
                </asp:DropDownList>
            </td>
            <td style="height: 21px"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Total"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="Impuestos" runat="server" ConnectionString="Data Source=JAVIER;Initial Catalog=Fase2J15;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Nombre] FROM [Impuesto] ORDER BY [Nombre]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</h2>

</asp:Content>
