<%@ Page Title="Iniciar Sesion" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
                <div class="form-horizontal">
                    <br />


                                  <div class="form-group">


                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario"></asp:Label>

            *<br __designer:mapid="104" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>

                                      <br __designer:mapid="fb" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>

            *<br __designer:mapid="101" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>

<br __designer:mapid="fc" />
                                      <br />
                                      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:LoginView ID="LoginView1" runat="server" OnViewChanged="LoginView1_ViewChanged">
                                          <AnonymousTemplate>
                                              <br />
                                              <br />
                                              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Iniciar Sesion" />
                                              <br />
                                          </AnonymousTemplate>
                                      </asp:LoginView>
                                      <br />
                                      <br />
                                      <br />
                                      <br />
                                      <br />
                                      <br />
                                      <br />
                    </div>

    </div>

                    <br />
    <br />
    <br />
    <br />

                    <br />
                </div>
                    
</asp:Content>