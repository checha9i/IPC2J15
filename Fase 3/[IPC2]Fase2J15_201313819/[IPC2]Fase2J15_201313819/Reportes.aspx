<%@ Page Title="About" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.Reportes" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p>Reporte por categoria</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Atras" OnClick="Button1_Click1" />
    </p>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
    </asp:Content>
