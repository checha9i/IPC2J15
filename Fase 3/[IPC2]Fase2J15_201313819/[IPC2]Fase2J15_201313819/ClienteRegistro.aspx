<%@ Page Title="Registro de Clientes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClienteRegistro.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ClienteRegistro" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Cree una cuenta nueva.</h4>
        <hr />

        <div class="form-group">

            <table style="width:100%;">
                <tr>
                    <td>

            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>

            *</td>
                    <td>
            <asp:TextBox ID="Nombr" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>

            *</td>
                    <td>
                        <asp:TextBox ID="apellid" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario"></asp:Label>

                        *</td>
                    <td>
            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>

            *</td>
                    <td>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label5" runat="server" Text="Confirme Contraseña"></asp:Label>

            *</td>
                    <td>
            <asp:TextBox ID="confirmarcontra" runat="server" TextMode="Password"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label6" runat="server" Text="DPI"></asp:Label>

            *</td>
                    <td>
            <asp:TextBox ID="DPI" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label7" runat="server" Text="NIT"></asp:Label>

            *</td>
                    <td>
            <asp:TextBox ID="nit" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label8" runat="server" Text="Telefono"></asp:Label>

            &nbsp; *</td>
                    <td>
                        <asp:TextBox ID="telef" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label11" runat="server" Text="Direccion"></asp:Label>

                        *</td>
                    <td>
            <asp:TextBox ID="Direccion" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label12" runat="server" Text="Tarjeta"></asp:Label>

                        *</td>
                    <td>
            <asp:TextBox ID="Tarjeta" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Tipo de Tarjeta</asp:ListItem>
                        <asp:ListItem>VISA</asp:ListItem>
                        <asp:ListItem>Master Card</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label13" runat="server" Text="Nombre de la Tarjeta"></asp:Label>
                        *</td>
                    <td>
                    <asp:TextBox ID="nombretarjeta" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>* Campo Obligatorio</td>
                    <td>


                            <asp:Button ID="Button1" runat="server" Text="Registrarse" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />

        </div>

                        <div class="form-group">


                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>

    </div>
</asp:Content>
