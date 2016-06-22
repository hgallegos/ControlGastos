<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formSubcategorias.aspx.vb" Inherits="Gestion_formSubcategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>Formulario de subcategoria</h2>
    <h3><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:FormView ID="FormViewSubcategoria" runat="server" DataKeyNames="idSubcategoria" DataSourceID="SqlDataSourceSubcategoria" Width="648px">
        <EditItemTemplate>
            <table class="tabla_formulario">
                <tr>
                    <td class="etiqueta">Subcategoría:</td>
                    <td><asp:Label ID="idSubcategoriaLabel1" runat="server" Text='<%# Eval("idSubcategoria") %>' /></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="etiqueta">Nombre</td>
                    <td><asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="etiqueta">Descripción:</td>
                    <td><asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" ErrorMessage="Debes ingresar una descripción." ControlToValidate="descripcionTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="etiqueta"> Categoría:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="nombre" DataValueField="idCategoria" SelectedValue='<%# Bind("idCategoria") %>'></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString2 %>" SelectCommand="SELECT * FROM [Categoria]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            
         
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="tabla_formulario">
                <tr>
                    <td class="etiqueta">Nombre:</td>
                    <td> <asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' /></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="etiqueta">Descripción:</td>
                    <td><asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' /></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="etiqueta">Categoría:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceCategorias" DataTextField="nombre" DataValueField="idCategoria" SelectedValue='<%# Bind("idCategoria") %>'></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString2 %>" SelectCommand="SELECT * FROM [Categoria]"></asp:SqlDataSource>
                    </td>
                    <td></td>
                </tr>
            </table>
            
            
            
           
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="tabla_formulario">
                <tr>
                    <td class="etiqueta"> Subcategoria:</td>
                    <td> <asp:Label ID="idSubcategoriaLabel" runat="server" Text='<%# Eval("idSubcategoria") %>' /></td>
                </tr>
                <tr>
                    <td class="etiqueta"> Nombre:</td>
                    <td> <asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' /></td>
                </tr>
                <tr>
                    <td class="etiqueta">Descripción:</td>
                    <td> <asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' /></td>
                </tr>
                <tr>
                    <td class="etiqueta">Categoría:</td>
                    <td><asp:Label ID="idCategoriaLabel" runat="server" Text='<%# Bind("idCategoria") %>' /></td>
                </tr>
            </table>
           
       

            
            
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="LinkButtonVolver" runat="server" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceSubcategoria" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Proyecto;Integrated Security=True" DeleteCommand="DELETE FROM [Subcategoria] WHERE [idSubcategoria] = @idSubcategoria" InsertCommand="INSERT INTO [Subcategoria] ([descripcion], [nombre], [idCategoria]) VALUES (@descripcion, @nombre, @idCategoria)" SelectCommand="SELECT * FROM [Subcategoria] WHERE ([idSubcategoria] = @idSubcategoria)" UpdateCommand="UPDATE [Subcategoria] SET [descripcion] = @descripcion, [nombre] = @nombre, [idCategoria] = @idCategoria WHERE [idSubcategoria] = @idSubcategoria">
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

