<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionCategorias.aspx.vb" Inherits="Gestion_gestionCategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Gestión de categorias</h2>
    <div class="text-center">
        <div class="btn-group" role="group">
        <a class="btn btn-default" data-toggle="tooltip" title="Nueva Categoria" href="formCategorias.aspx">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
        <a class="btn btn-default" data-toggle="tooltip" title="Gestionar Subcategorias" href="gestionSubcategorias.aspx">
            <span class="glyphicon glyphicon-edit"></span>
        </a>
    </div>
    </div>
    
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip(); 
        });
    </script>
    <h4 style="text-align: center"></h4>
     <h4 style="text-align: center"></h4>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:GridView ID="GridViewCategorias" CssClass="table table-bordered table-striped table-hover" runat="server" AllowPaging="True" AllowSorting="True" UseAccessibleHeader="true" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idCategoria" DataSourceID="SqlDataSourceCategorias" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="1000px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="idCategoria" HeaderText="# " InsertVisible="False" ReadOnly="True" SortExpression="idCategoria" />
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
            <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-primary" ShowSelectButton="True" />
        </Columns>
       
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Categoria] WHERE [idCategoria] = @idCategoria" InsertCommand="INSERT INTO [Categoria] ([nombre]) VALUES (@nombre)" SelectCommand="SELECT * FROM [Categoria]" UpdateCommand="UPDATE [Categoria] SET [nombre] = @nombre WHERE [idCategoria] = @idCategoria">
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

