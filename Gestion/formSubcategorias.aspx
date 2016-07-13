<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formSubcategorias.aspx.vb" Inherits="Gestion_formSubcategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>Formulario de subcategoria</h2>
    <h3><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:FormView ID="FormViewSubcategoria" runat="server" DataKeyNames="idSubcategoria" DataSourceID="SqlDataSourceSubcategoria" Width="648px">
        <EditItemTemplate>
            <table class="table table-bordered">
                <tr>
                    <th class="etiqueta">Subcategoría:</th>
                    <td><asp:Label ID="idSubcategoriaLabel1" CssClass="form-control" runat="server" Text='<%# Eval("idSubcategoria") %>' /></td>
                    <td></td>
                </tr>
                <tr>
                    <th class="etiqueta">Nombre</th>
                    <td><asp:TextBox ID="nombreTextBox" CssClass="form-control" runat="server" Text='<%# Bind("nombre") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Descripción:</th>
                    <td><asp:TextBox ID="descripcionTextBox" CssClass="form-control" runat="server" Text='<%# Bind("descripcion") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" ErrorMessage="Debes ingresar una descripción." ControlToValidate="descripcionTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta"> Categoría:</th>
                    <td>
                        <asp:DropDownList ID="DropDownListCategoria" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="nombre" DataValueField="idCategoria" SelectedValue='<%# Bind("idCategoria") %>'></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Categoria]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            
         
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>

            <table class="table table-bordered ">
                <tr>
                    <th class="etiqueta">Nombre:</th>
                    <td> <asp:TextBox ID="nombreTextBox" CssClass="form-control" runat="server" Text='<%# Bind("nombre") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Descripción:</th>
                    <td><asp:TextBox ID="descripcionTextBox" CssClass="form-control" runat="server" Text='<%# Bind("descripcion") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" ErrorMessage="Debes ingresar una descripción." ControlToValidate="descripcionTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Categoría:</th>
                    <td>
                        <asp:DropDownList ID="DropDownListCategoria" CssClass="form-control"
                             runat="server" DataSourceID="SqlDataSourceCategorias" DataTextField="nombre" DataValueField="idCategoria" SelectedValue='<%# Bind("idCategoria") %>'></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Categoria]"></asp:SqlDataSource>
                    </td>
                    <td></td>
                </tr>
            </table>
            
            
            
           
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="table table-bordered table-striped">
                <tr>
                    <th class="etiqueta"> Subcategoria:</th>
                    <td> <asp:Label ID="idSubcategoriaLabel" runat="server" Text='<%# Eval("idSubcategoria") %>' /></td>
                </tr>
                <tr>
                    <th class="etiqueta"> Nombre:</th>
                    <td> <asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' /></td>
                </tr>
                <tr>
                    <th class="etiqueta">Descripción:</th>
                    <td> <asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' /></td>
                </tr>
                <tr>
                    <th class="etiqueta">Categoría:</th>
                    <td><asp:Label ID="idCategoriaLabel" runat="server" Text='<%# Bind("nombreCategoria")%>' /></td>
                </tr>
            </table>
           
       

            
            
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="LinkButtonVolver" runat="server" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceSubcategoria" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" 
        DeleteCommand="DELETE FROM [Subcategoria] WHERE [idSubcategoria] = @idSubcategoria" 
        InsertCommand="INSERT INTO [Subcategoria] ([descripcion], [nombre], [idCategoria]) VALUES (@descripcion, @nombre, @idCategoria)" 
        SelectCommand="SELECT Subcategoria.idSubcategoria, Subcategoria.descripcion, Subcategoria.nombre, Subcategoria.idCategoria, Categoria.nombre AS nombreCategoria FROM Subcategoria INNER JOIN Categoria ON Subcategoria.idCategoria = Categoria.idCategoria WHERE (Subcategoria.idSubcategoria = @idSubcategoria)" 
        UpdateCommand="UPDATE [Subcategoria] SET [descripcion] = @descripcion, [nombre] = @nombre, [idCategoria] = @idCategoria WHERE [idSubcategoria] = @idSubcategoria">
        <DeleteParameters>
            <asp:Parameter Name="idSubcategoria" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="idCategoria" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idSubcategoria" QueryStringField="idSubcategoria" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="idCategoria" Type="Int32" />
            <asp:Parameter Name="idSubcategoria" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

