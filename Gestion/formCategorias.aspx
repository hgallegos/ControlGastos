<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formCategorias.aspx.vb" Inherits="Gestion_formCategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>Formulario de Categorías</h2>
    <h3><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label>
        <asp:FormView ID="FormViewCategorias" runat="server" DataKeyNames="idCategoria" DataSourceID="SqlDataSourceCategorias" Width="727px">
            <EditItemTemplate>
                <table class="tabla_formulario">
                    <tr>
                        <td class="etiqueta">Categoria:</td>
                        <td><asp:Label ID="idCategoriaLabel1" runat="server" Text='<%# Eval("idCategoria") %>' /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="etiqueta"> Nombre:</td>
                        <td> <asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' /></td>
                        <td class="error">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
                
                
                <br />
                
                
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="tabla_formulario">
                    <tr>
                        <td class="etiqueta"> Nombre:</td>
                        <td><asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' /></td>
                        <td class="error">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
               
                <br />
               
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="tabla_formulario">
                    <tr>
                        <td class="etiqueta" style="width: 168px">Categoria #:</td>
                        <td><asp:Label ID="idCategoriaLabel" runat="server" Text='<%# Eval("idCategoria") %>' /></td>
                    </tr>
                    <tr>
                        <td class="etiqueta" style="width: 168px"> Nombre:</td>
                        <td><asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' /></td>
                    </tr>
                </table>
                
               
                <br />
                
               
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="LinkButtonVolver" runat="server" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>
            
            </ItemTemplate>
        </asp:FormView>
    </h3>

    <asp:SqlDataSource ID="SqlDataSourceCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Categoria] WHERE [idCategoria] = @idCategoria" InsertCommand="INSERT INTO [Categoria] ([nombre]) VALUES (@nombre)" SelectCommand="SELECT * FROM [Categoria] WHERE ([idCategoria] = @idCategoria)" UpdateCommand="UPDATE [Categoria] SET [nombre] = @nombre WHERE [idCategoria] = @idCategoria">
        <DeleteParameters>
            <asp:Parameter Name="idCategoria" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="9" Name="idCategoria" QueryStringField="idCategoria" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="idCategoria" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

