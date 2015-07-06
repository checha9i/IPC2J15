<%@ Page Title="About" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="Reporte3.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.Reporte3" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>
        <asp:Button ID="Button1" runat="server" Text="Atras" OnClick="Button1_Click1" />
    </h3>
        <p>Reporte por categoria</p>
    <p></p>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
    <p>Use this area to provide additional information.</p>
</asp:Content>
