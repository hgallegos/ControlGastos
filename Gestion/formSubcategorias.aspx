<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formSubcategorias.aspx.vb" Inherits="Gestion_formSubcategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>Formulario de subcategoria</h2>
    <h3><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:FormView ID="FormViewSubcategoria" runat="server" DataKeyNames="idSubcategoria" DataSourceID="SqlDataSourceSubcategoria">
        <EditItemTemplate>
            idSubcategoria:
            <asp:Label ID="idSubcategoriaLabel1" runat="server" Text='<%# Eval("idSubcategoria") %>' />
            <br />
            descripcion:
            <asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' />
            <br />
            nombre:
            <asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' />
            <br />
            idCategoria:
            <asp:TextBox ID="idCategoriaTextBox" runat="server" Text='<%# Bind("idCategoria") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="UpdateCancelButton_Click" />
        </EditItemTemplate>
        <InsertItemTemplate>
            descripcion:
            <asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' />
            <br />
            nombre:
            <asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' />
            <br />
            idCategoria:
            <asp:TextBox ID="idCategoriaTextBox" runat="server" Text='<%# Bind("idCategoria") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
        </InsertItemTemplate>
        <ItemTemplate>
            idSubcategoria:
            <asp:Label ID="idSubcategoriaLabel" runat="server" Text='<%# Eval("idSubcategoria") %>' />
            <br />
            descripcion:
            <asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' />
            <br />
            nombre:
            <asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' />
            <br />
            idCategoria:
            <asp:Label ID="idCategoriaLabel" runat="server" Text='<%# Bind("idCategoria") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="LinkButtonVolver" runat="server" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceSubcategoria" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString2 %>" DeleteCommand="DELETE FROM [Subcategoria] WHERE [idSubcategoria] = @idSubcategoria" InsertCommand="INSERT INTO [Subcategoria] ([descripcion], [nombre], [idCategoria]) VALUES (@descripcion, @nombre, @idCategoria)" SelectCommand="SELECT * FROM [Subcategoria] WHERE ([idSubcategoria] = @idSubcategoria)" UpdateCommand="UPDATE [Subcategoria] SET [descripcion] = @descripcion, [nombre] = @nombre, [idCategoria] = @idCategoria WHERE [idSubcategoria] = @idSubcategoria">
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

