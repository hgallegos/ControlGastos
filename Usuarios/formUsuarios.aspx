<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formUsuarios.aspx.vb" Inherits="Usuarios_formUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>Formulario de usuarios</h2>
    <h3>
        <asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:FormView ID="FormViewUsuarios" runat="server" DataKeyNames="idUsuario" DataSourceID="SqlDataSourceUsuarios" Width="636px">
        <EditItemTemplate>
            idUsuario:
            <asp:Label ID="idUsuarioLabel1" runat="server" Text='<%# Eval("idUsuario") %>' />
            <br />
            nombre:
            <asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' />
            <br />
            contraseña:
            <asp:TextBox ID="contraseñaTextBox" runat="server" Text='<%# Bind("contraseña") %>' />
            <br />
            correo:
            <asp:TextBox ID="correoTextBox" runat="server" Text='<%# Bind("correo") %>' />
            <br />
            idPerfil:
            <asp:TextBox ID="idPerfilTextBox" runat="server" Text='<%# Bind("idPerfil") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            nombre:
            <asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' />
            <br />
            contraseña:
            <asp:TextBox ID="contraseñaTextBox" runat="server" Text='<%# Bind("contraseña") %>' />
            <br />
            correo:
            <asp:TextBox ID="correoTextBox" runat="server" Text='<%# Bind("correo") %>' />
            <br />
            idPerfil:
            <asp:TextBox ID="idPerfilTextBox" runat="server" Text='<%# Bind("idPerfil") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            idUsuario:
            <asp:Label ID="idUsuarioLabel" runat="server" Text='<%# Eval("idUsuario") %>' />
            <br />
            nombre:
            <asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' />
            <br />
            contraseña:
            <asp:Label ID="contraseñaLabel" runat="server" Text='<%# Bind("contraseña") %>' />
            <br />
            correo:
            <asp:Label ID="correoLabel" runat="server" Text='<%# Bind("correo") %>' />
            <br />
            idPerfil:
            <asp:Label ID="idPerfilLabel" runat="server" Text='<%# Bind("idPerfil") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
        </ItemTemplate>
</asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString2 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [idUsuario] = @idUsuario" InsertCommand="INSERT INTO [Usuario] ([nombre], [contraseña], [correo], [idPerfil]) VALUES (@nombre, @contraseña, @correo, @idPerfil)" SelectCommand="SELECT * FROM [Usuario] WHERE ([idUsuario] = @idUsuario)" UpdateCommand="UPDATE [Usuario] SET [nombre] = @nombre, [contraseña] = @contraseña, [correo] = @correo, [idPerfil] = @idPerfil WHERE [idUsuario] = @idUsuario">
        <DeleteParameters>
            <asp:Parameter Name="idUsuario" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="contraseña" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="idPerfil" Type="Byte" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idUsuario" QueryStringField="idUsuario" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="contraseña" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="idPerfil" Type="Byte" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

