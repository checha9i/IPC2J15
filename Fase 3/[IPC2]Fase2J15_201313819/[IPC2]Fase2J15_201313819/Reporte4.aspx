<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reporte4.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.Reporte4" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
        <p>Reporte por categoria</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Atras" OnClick="Button1_Click1" />
    </p>
    <p>Use this area to prov</p>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
    <p>
        ide additional information.</p>
</asp:Content>
