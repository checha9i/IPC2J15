<%@ Page Title="Iniciar Sesion" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
                <div class="form-horizontal">
                    <div class="form-group">

<br __designer:mapid="fc" />
                                      <table style="width:100%;">
                                          <tr>
                                              <td style="width: 259px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario"></asp:Label>

                                              </td>
                                              <td>
            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>

                                              </td>
                                              <td>&nbsp;</td>
                                          </tr>
                                          <tr>
                                              <td style="width: 259px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>

            *</td>
                                              <td>
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>

                                              </td>
                                              <td>&nbsp;</td>
                                          </tr>
                                          <tr>
                                              <td style="width: 259px">&nbsp;</td>
                                              <td>
                                                  <asp:DropDownList ID="DropDownList1" runat="server">
                                                      <asp:ListItem>Cliente</asp:ListItem>
                                                      <asp:ListItem>Empleado</asp:ListItem>
                                                      <asp:ListItem>Administrador</asp:ListItem>
                                                      <asp:ListItem>Director</asp:ListItem>
                                                  </asp:DropDownList>
                                              </td>
                                               
                                          </tr>
                                          <tr>
                                              <td style="width: 259px">&nbsp;</td>
                                              <td>


                            <asp:Button ID="Button1" runat="server" Text="Iniciar Sesion" OnClick="Button1_Click" />
                                              </td>
                                               
                                          </tr>
                                      </table>
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <br />
                                      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                
                    
</asp:Content>