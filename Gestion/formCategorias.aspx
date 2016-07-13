<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formCategorias.aspx.vb" Inherits="Gestion_formCategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>Formulario de Categorías</h2>
    <h3><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>
    &nbsp;
        <asp:FormView ID="FormViewCategorias" runat="server" DataKeyNames="idCategoria" DataSourceID="SqlDataSourceCategorias" Width="727px">
            <EditItemTemplate>
                <table class="table table-bordered">
                    <tr>
                        <th class="etiqueta">Categoria:</th>
                        <td><asp:Label ID="idCategoriaLabel1" CssClass="form-control" runat="server" Text='<%# Eval("idCategoria") %>' /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="etiqueta"> Nombre:</th>
                        <td> <asp:TextBox ID="nombreTextBox" CssClass="form-control" runat="server" Text='<%# Bind("nombre") %>' /></td>
                        <td class="error">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
                
                
                <br />
                
                
                <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="table table-bordered">
                    <tr>
                        <th> Nombre:</th>
                        <td><asp:TextBox ID="nombreTextBox" CssClass="form-control" runat="server" Text='<%# Bind("nombre") %>' /></td>
                        <td class="error">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
               
                <br />
               
                <asp:LinkButton ID="InsertButton" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="table table-bordered table-striped">
                    <tr>
                        <th class="etiqueta" style="width: 168px">Categoria #:</th>
                        <td><asp:Label ID="idCategoriaLabel" runat="server" Text='<%# Eval("idCategoria") %>' /></td>
                    </tr>
                    <tr>
                        <th class="etiqueta" style="width: 168px"> Nombre:</th>
                        <td><asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' /></td>
                    </tr>
                </table>
                
               
                <br />
                
               
                <asp:LinkButton ID="EditButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger"  runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="LinkButtonVolver" CssClass="btn btn-deafult" runat="server" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>
            
            </ItemTemplate>
        </asp:FormView>

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

