<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formUsuarios.aspx.vb" Inherits="Usuarios_formUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>Formulario de usuarios</h2>
    <h3><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>
    &nbsp;
    <asp:FormView ID="FormViewUsuarios" runat="server" DataKeyNames="idUsuario" DataSourceID="SqlDataSourceUsuarios" Width="636px">
        <EditItemTemplate>
            <table class="table table-bordered">
                <tr>
                    <th class="etiqueta">ID: </th>
                    <td><asp:Label ID="idUsuarioLabel1" runat="server" Text='<%# Eval("idUsuario") %>' /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <th class="etiqueta">Nombre: </th>
                    <td><asp:TextBox ID="nombreTextBox" CssClass="form-control" runat="server" Text='<%# Bind("nombre") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ControlToValidate="nombreTextBox" ErrorMessage="Debes ingresar un nombre."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th class="etiqueta">Mail:</th>
                    <td> <asp:TextBox ID="correoTextBox" CssClass="form-control" runat="server" Text='<%# Bind("correo") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMail" runat="server" ControlToValidate="correoTextBox" ErrorMessage="Debes ingresar un mail."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th class="etiqueta">Contraseña: </th>
                    <td><asp:TextBox ID="contraseñaTextBox" CssClass="form-control" runat="server" Text='<%# Bind("contraseña") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorContraseña" runat="server" ControlToValidate="contraseñaTextBox" ErrorMessage="Debes ingresar una contraseña."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th class="etiqueta">Perfil: </th>
                    <td>
                        <asp:DropDownList ID="DropDownListPerfil" CssClass="form-control" runat="server" DataSourceID="SqlDataSourcePerfil" DataTextField="nombre" DataValueField="idPerfil" SelectedValue='<%# Bind("idPerfil") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourcePerfil" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Perfil]"></asp:SqlDataSource>
                    </td>
                    <td></td>
                </tr>
            </table>
         
            
            <br />
            <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="table table-bordered">
                <tr>
                    <th class="etiqueta">Nombre: </th>
                    <td><asp:TextBox ID="nombreTextBox" CssClass="form-control" runat="server" Text='<%# Bind("nombre") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Mail: </th>
                    <td><asp:TextBox ID="correoTextBox" CssClass="form-control" runat="server" Text='<%# Bind("correo") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMail" runat="server" ErrorMessage="Debes ingresar un mail." ControlToValidate="correoTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Contraseña: </th>
                    <td><asp:TextBox ID="contraseñaTextBox" CssClass="form-control" runat="server" Text='<%# Bind("contraseña") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator CssClass="has-error" ID="RequiredFieldValidatorContraseña" runat="server" ErrorMessage="Debes ingresar una contraseña." ControlToValidate="contraseñaTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Perfil: </th>
                    <td>
                        <asp:DropDownList ID="DropDownListPerfil" CssClass="form-control" runat="server" DataSourceID="SqlDataSourcePerfil" DataTextField="nombre" DataValueField="idPerfil" SelectedValue='<%# Bind("idPerfil") %>'></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourcePerfil" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Perfil]"></asp:SqlDataSource>
                    </td>
                    <td></td>
                </tr>
            </table>
           
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="table table-bordered table-striped">
                <tr>
                    <th class="etiqueta">Usuario: </th>
                    <td><asp:Label ID="idUsuarioLabel" runat="server" Text='<%# Eval("idUsuario") %>' /></td>
                </tr>
                <tr>
                    <th class="etiqueta">Nombre: </th>
                    <td><asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' /></td>
                </tr>
                <tr>
                    <th class="etiqueta">Mail: </th>
                    <td><asp:Label ID="correoLabel" runat="server" Text='<%# Bind("correo") %>' /></td>
                </tr>
                <tr>
                    <th class="etiqueta">Contraseña: </th>
                    <td><asp:Label ID="contraseñaLabel" runat="server" Text='<%# Bind("contraseña") %>' /></td>
                </tr>
                <tr>
                    <th class="etiqueta">Perfil: </th>
                    <td><asp:Label ID="idPerfilLabel" runat="server" Text='<%# Bind("Expr1")%>' /></td>
                </tr>
            </table>
           
            
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="LinkButtonVolver" runat="server" CssClass="btn btn-default" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>
        </ItemTemplate>
</asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Usuario] WHERE [idUsuario] = @idUsuario" InsertCommand="INSERT INTO [Usuario] ([nombre], [contraseña], [correo], [idPerfil]) VALUES (@nombre, @contraseña, @correo, @idPerfil)" SelectCommand="SELECT Usuario.idUsuario, Usuario.nombre, Usuario.contraseña, Usuario.correo, Usuario.idPerfil, Perfil.nombre AS Expr1 FROM Usuario INNER JOIN Perfil ON Usuario.idPerfil = Perfil.idPerfil WHERE (Usuario.idUsuario = @idUsuario)" UpdateCommand="UPDATE [Usuario] SET [nombre] = @nombre, [contraseña] = @contraseña, [correo] = @correo, [idPerfil] = @idPerfil WHERE [idUsuario] = @idUsuario">
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

