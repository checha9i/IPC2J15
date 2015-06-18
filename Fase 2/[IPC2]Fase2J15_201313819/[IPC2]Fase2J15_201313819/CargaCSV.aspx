<%@ Page Title="CargaCSV" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CargaCSV.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.CargaCSV" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<table style="width: 100%;">
        <tr>
            <td style="width: 252px">
                <asp:Label ID="Label1" runat="server" Text="Seleccione Archivo"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px; width: 252px">&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td style="height: 66px">&nbsp;</td>
            <td style="height: 66px"></td>
        </tr>
        <tr>
            <td style="width: 252px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Subir" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cargar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 252px">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
            <td>
                <asp:Label ID="labeloculto" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
    </h2>

</asp:Content>

