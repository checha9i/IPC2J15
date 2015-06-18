<%@ Page Title="Registro de Empleados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroEmpleado.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.RegistroEmpleado" %>

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

                        Sueldo</td>
                    <td>
            <asp:TextBox ID="Sueldo" runat="server"></asp:TextBox>

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

                        Nombre del departamento</td>
                    <td>
            <asp:TextBox ID="depa" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

                        Nombre de la sucursal</td>
                    <td>
            <asp:TextBox ID="nombresucu" runat="server"></asp:TextBox>

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

            <asp:Label ID="Label9" runat="server" Text="Telefono2"></asp:Label>

                    </td>
                    <td>
            <asp:TextBox ID="telef2" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label10" runat="server" Text="Telefono3"></asp:Label>

                    </td>
                    <td>
            <asp:TextBox ID="telef3" runat="server"></asp:TextBox>

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

                        Correo</td>
                    <td>
            <asp:TextBox ID="Correo" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Rol</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Seleccione Rol </asp:ListItem>
                            <asp:ListItem>Empleado</asp:ListItem>
                            <asp:ListItem>Administrador</asp:ListItem>
                        </asp:DropDownList>

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
