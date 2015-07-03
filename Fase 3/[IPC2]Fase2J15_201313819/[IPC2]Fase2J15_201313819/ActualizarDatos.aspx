<%@ Page Title="Actualizar Datos" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ActualizarDatos.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ActualizarDatos" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <p>
        <br />
    </p>

            <table style="width:100%;">
                <tr>
                    <td style="height: 22px">

            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>

                    </td>
                    <td style="height: 22px">
            <asp:TextBox ID="Nombr" runat="server"></asp:TextBox>

                    </td>
                    <td style="height: 22px"></td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="apellid" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario"></asp:Label>

                        </td>
                    <td>
            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label6" runat="server" Text="DPI"></asp:Label>

                    </td>
                    <td>
            <asp:TextBox ID="DPI" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label7" runat="server" Text="NIT"></asp:Label>

                    </td>
                    <td>
            <asp:TextBox ID="nit" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label8" runat="server" Text="Telefono"></asp:Label>

                        &nbsp; </td>
                    <td>
                        <asp:TextBox ID="telef" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label11" runat="server" Text="Direccion"></asp:Label>

                        </td>
                    <td>
            <asp:TextBox ID="Direccion" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label12" runat="server" Text="Tarjeta"></asp:Label>

                        </td>
                    <td>
            <asp:TextBox ID="Tarjeta" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>


                            <asp:Button ID="Button1" runat="server" Text="Actualizar Datos" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </asp:Content>

