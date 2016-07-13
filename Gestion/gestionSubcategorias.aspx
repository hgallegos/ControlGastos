<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionSubcategorias.aspx.vb" Inherits="Gestion_gestionSubcategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h2 style="text-align: center">Gestión de Subcategorias</h2>

    <div class="text-center">
        <div class="btn-group" role="group">
        <a class="btn btn-default" data-toggle="tooltip" title="Nueva subcategoria" href="formSubcategorias.aspx">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
        <a class="btn btn-default" data-toggle="tooltip" title="Gestionar categorias" href="gestionCategorias.aspx">
            <span class="glyphicon glyphicon-edit"></span>
        </a>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip(); 
        });
    </script>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:GridView ID="GridViewSubcategorias" CssClass="table table-bordered table-striped table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" UseAccessibleHeader="true" CellPadding="4" DataKeyNames="idSubcategoria" DataSourceID="SqlDataSourceSubcategoria" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="1000px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
            <asp:BoundField DataField="descripcion" HeaderText="Descripción" SortExpression="descripcion" />
            <asp:BoundField DataField="Expr1" HeaderText="Categoría" SortExpression="Expr1" />
            <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-primary" ShowSelectButton="True" />
        </Columns>
       
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceSubcategoria" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" 
        DeleteCommand="DELETE FROM [Subcategoria] WHERE [idSubcategoria] = @idSubcategoria" 
        InsertCommand="INSERT INTO [Subcategoria] ([descripcion], [nombre], [idCategoria]) 
                        VALUES (@descripcion, @nombre, @idCategoria)" 
        SelectCommand="SELECT Subcategoria.idSubcategoria, Subcategoria.descripcion, Subcategoria.nombre, Subcategoria.idCategoria, Categoria.nombre AS Expr1 FROM Subcategoria INNER JOIN Categoria ON Subcategoria.idCategoria = Categoria.idCategoria" UpdateCommand="UPDATE [Subcategoria] SET [descripcion] = @descripcion, [nombre] = @nombre, [idCategoria] = @idCategoria WHERE [idSubcategoria] = @idSubcategoria">
        <DeleteParameters>
            <asp:Parameter Name="idSubcategoria" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="idCategoria" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="idCategoria" Type="Int32" />
            <asp:Parameter Name="idSubcategoria" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <h3 style="text-align: center"><a class="btn btn-primary" href="gestionCategorias.aspx">Volver</a></h3>
<p style="text-align: center">&nbsp;</p>
</asp:Content>

