<%@ Page Title="About" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="MenuReportes.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.MenuReportes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
<h3><asp:Button ID="Button1" runat="server" Text="Reporte 1" style="font-family: Arial; font-size: 18pt; text-decoration: line-through" OnClick="Button1_Click1" />
        <asp:Button ID="Button2" runat="server" Text="Reporte 2" style="font-family: Arial; font-size: 18pt; text-decoration: line-through" OnClick="Button2_Click1" />
        <asp:Button ID="Button3" runat="server" Text="Reporte 3" style="font-family: Arial; font-size: 18pt; text-decoration: line-through" OnClick="Button3_Click1" />
        <asp:Button ID="Button4" runat="server" Text="Reporte 4 " style="font-family: Arial; font-size: 18pt; text-decoration: line-through" OnClick="Button4_Click1" />
    </h3>

    <p>Use this area to provide additional information.</p>
</asp:Content>
