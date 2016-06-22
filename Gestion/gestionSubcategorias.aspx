<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionSubcategorias.aspx.vb" Inherits="Gestion_gestionSubcategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Gestión de subcategorias</h2>
    <h4 style="text-align: center"><a href="formSubcategorias.aspx">Agregar subcategoria</a></h4>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:GridView ID="GridViewSubcategorias" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idSubcategoria" DataSourceID="SqlDataSourceSubcategoria" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="600px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
            <asp:BoundField DataField="descripcion" HeaderText="Descripción" SortExpression="descripcion" />
            <asp:BoundField DataField="Expr1" HeaderText="Categoría" SortExpression="Expr1" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceSubcategoria" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ControlGastosConnectionString %>" 
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
    
    <h3 style="text-align: center"><a href="gestionCategorias.aspx">Volver</a></h3>
<p style="text-align: center">&nbsp;</p>
</asp:Content>

