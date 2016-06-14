<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionCategorias.aspx.vb" Inherits="Gestion_gestionCategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Gestión de categorias</h2>
    <h3 style="text-align: center"><a href="formCategorias.aspx">Agregar categoría</a></h3>
     <h3 style="text-align: center"><a href="gestionSubcategorias.aspx">Gestionar subcategorías</a></h3>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:GridView ID="GridViewCategorias" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idCategoria" DataSourceID="SqlDataSourceCategorias" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="idCategoria" HeaderText="# " InsertVisible="False" ReadOnly="True" SortExpression="idCategoria" />
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
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
    <asp:SqlDataSource ID="SqlDataSourceCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString2 %>" DeleteCommand="DELETE FROM [Categoria] WHERE [idCategoria] = @idCategoria" InsertCommand="INSERT INTO [Categoria] ([nombre]) VALUES (@nombre)" SelectCommand="SELECT * FROM [Categoria]" UpdateCommand="UPDATE [Categoria] SET [nombre] = @nombre WHERE [idCategoria] = @idCategoria">
        <DeleteParameters>
            <asp:Parameter Name="idCategoria" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="idCategoria" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    
</asp:Content>

