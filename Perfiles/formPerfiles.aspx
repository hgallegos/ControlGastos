<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formPerfiles.aspx.vb" Inherits="Perfiles_formPerfiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Formulario de Perfiles</h2>
    <h3><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>
        <asp:FormView ID="FormViewPerfiles" runat="server" CellPadding="4" DataKeyNames="idPerfil" DataSourceID="SqlDataSourcePerfiles" ForeColor="#333333" Width="450px">
            <EditItemTemplate>
                <table class="table table-bordered">
                    <tr>
                        <th class="etiqueta">Perfil:</th>
                        <td><asp:Label ID="idPerfilLabel1" CssClass="form-control" runat="server" Text='<%# Eval("idPerfil") %>' /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="etiqueta">Nombre:</th>
                        <td><asp:TextBox ID="nombreTextBox" CssClass="form-control" runat="server" Text='<%# Bind("nombre") %>' /></td>
                        <td class="error">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <th class="etiqueta">Descripci&oacute;n</th>
                        <td><asp:TextBox ID="descripcionTextBox" CssClass="form-control" runat="server" Text='<%# Bind("descripcion") %>' /></td>
                        <td class="error">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" ErrorMessage="Debes ingresar una descripci&oacute;n." ControlToValidate="descripcionTextBox"></asp:RequiredFieldValidator></td>
                    </tr>

                </table>

                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="UpdateCancelButton_Click" />
                <br />
            </EditItemTemplate>
           
            <InsertItemTemplate>
                <table class="table table-bordered">
                    <tr>
                        <th class="etiqueta"> Nombre:</th>
                        <td><asp:TextBox ID="nombreTextBox" CssClass="form-control" runat="server" Text='<%# Bind("nombre") %>' /></td>
                        <td class="error">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                    </tr>
                    
                    <tr>
                        <th class="etiqueta"> Descripci&oacute;n:</th>
                        <td><asp:TextBox ID="descripcionTextBox" CssClass="form-control" runat="server" Text='<%# Bind("descripcion") %>' /></td>
                        <td class="error">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debes ingresar una descripci&oacute;n." ControlToValidate="descripcionTextBox"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
                
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="table table-bordered table-striped">
                    <tr>
                        <th class="etiqueta" style="width: 168px">Perfil #:</th>
                        <td><asp:Label ID="idPerfilLabel" runat="server" Text='<%# Eval("idPerfil") %>' /></td>
                    </tr>
                    <tr>
                        <th class="etiqueta" style="width: 168px"> Nombre:</th>
                        <td><asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' /></td>
                    </tr>
                    <tr>
                        <tth class="etiqueta" style="width: 168px"> Descripci&oacute;n:</tth>
                        <td><asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' /></td>
                    </tr>
                </table>
            
                <br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="LinkButtonVolver" runat="server" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>

            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSourcePerfiles" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM Perfil WHERE (idPerfil = @idPerfil)" InsertCommand="INSERT INTO Perfil(nombre, descripcion) VALUES (@nombre, @descripcion)" SelectCommand="SELECT idPerfil, nombre, descripcion FROM Perfil WHERE (idPerfil = @idPerfil)" UpdateCommand="UPDATE Perfil SET nombre = @nombre, descripcion = @descripcion WHERE (idPerfil = @idPerfil)">
            <DeleteParameters>
                <asp:Parameter Name="idPerfil" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre" />
                <asp:Parameter Name="descripcion" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="idPerfil" QueryStringField="idPerfil" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre" />
                <asp:Parameter Name="descripcion" />
                <asp:Parameter Name="idPerfil" />
            </UpdateParameters>
        </asp:SqlDataSource>
    

</asp:Content>

