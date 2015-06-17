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

            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>

            *<br />
            <asp:TextBox ID="Nombr" runat="server"></asp:TextBox>

        </div>
        
        <div class="form-group">

            <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>

            *<br />
            <asp:TextBox ID="apellid" runat="server"></asp:TextBox>

        </div>
        <div class="form-group">

            <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario"></asp:Label>

            *<br />
            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>

        </div>
        <div class="form-group">

            <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>

            *<br />
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>

        </div>
        <div class="form-group">

            <asp:Label ID="Label5" runat="server" Text="Confirme Contraseña"></asp:Label>

            *<br />
            <asp:TextBox ID="confirmarcontra" runat="server" TextMode="Password"></asp:TextBox>

        </div>
        <div class="form-group">

            <asp:Label ID="Label6" runat="server" Text="DPI"></asp:Label>

            *<br />
            <asp:TextBox ID="DPI" runat="server"></asp:TextBox>

        </div>
        <div class="form-group">

            <asp:Label ID="Label7" runat="server" Text="NIT"></asp:Label>

            *<br />
            <asp:TextBox ID="nit" runat="server"></asp:TextBox>

        </div>
        <div class="form-group">

            <asp:Label ID="Label8" runat="server" Text="Telefono"></asp:Label>

            &nbsp; *<br />
            <asp:TextBox ID="telef" runat="server"></asp:TextBox>

        </div>
        <div class="form-group">

            <asp:Label ID="Label9" runat="server" Text="Telefono2"></asp:Label>

            <br />
            <asp:TextBox ID="telef2" runat="server"></asp:TextBox>

        </div>
                <div class="form-group">

            <asp:Label ID="Label10" runat="server" Text="Telefono3"></asp:Label>

            <br />
            <asp:TextBox ID="telef3" runat="server"></asp:TextBox>

        </div>

                <div class="form-group">

            <asp:Label ID="Label11" runat="server" Text="Direccion"></asp:Label>

                    *<br />
            <asp:TextBox ID="Direccion" runat="server"></asp:TextBox>

        </div>

                <div class="form-group">

            <asp:Label ID="Label12" runat="server" Text="Tarjeta"></asp:Label>

                    *<br />
            <asp:TextBox ID="Tarjeta" runat="server"></asp:TextBox>

                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Tipo de Tarjeta</asp:ListItem>
                        <asp:ListItem>VISA</asp:ListItem>
                        <asp:ListItem>Master Card</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="Nombre de la Tarjeta"></asp:Label>
                    <br />
                    <asp:TextBox ID="nombretarjeta" runat="server"></asp:TextBox>

        </div>       

                        <div class="form-group">


                            <asp:Button ID="Button1" runat="server" Text="Registrarse" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Campo Obligatorio</div>

    </div>
</asp:Content>
