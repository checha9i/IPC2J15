<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ActualizarEmpleado.aspx.cs" Inherits="_IPC2_Fase2J15_201313819.ActualizarEmpleado" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

    <div class="form-horizontal">
        <hr />

        <div class="form-group">

            <br />
          
            <table style="width:100%;">
                <tr>
                    <td style="width: 329px">

            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>

            *</td>
                    <td>
            <asp:TextBox ID="Nombr" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 329px">

            <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>

            *</td>
                    <td>
                        <asp:TextBox ID="apellid" runat="server" Height="20px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 329px">

                        Sueldo</td>
                    <td>
            <asp:TextBox ID="Sueldo" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 329px">

            <asp:Label ID="Label6" runat="server" Text="DPI"></asp:Label>

            *</td>
                    <td>
            <asp:TextBox ID="DPI" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 329px">

                        Contraseña</td>
                    <td>
            <asp:TextBox ID="contra" runat="server" TextMode="Password"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 329px">

            <asp:Label ID="Label8" runat="server" Text="Telefono"></asp:Label>

            &nbsp; *</td>
                    <td>
                        <asp:TextBox ID="telef" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 329px">

            <asp:Label ID="Label11" runat="server" Text="Direccion"></asp:Label>

                        *</td>
                    <td>
            <asp:TextBox ID="Direccion" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 329px">

                        Correo</td>
                    <td>
            <asp:TextBox ID="Correo" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 329px">&nbsp;</td>
                    <td>


                            <asp:Button ID="Button1" runat="server" Text="Actualizar Datos" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
          
            <br />
            <br />

        </div>

                        <div class="form-group">


                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>

    </div>
</asp:Content>
