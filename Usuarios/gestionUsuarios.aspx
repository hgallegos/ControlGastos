<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionUsuarios.aspx.vb" Inherits="Usuarios_gestionUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Gestión de usuarios</h2>
    <div class="text-center">
        <div class="btn-group" role="group">
        <a class="btn btn-default" data-toggle="tooltip" title="Nuevo usuario" href="formUsuarios.aspx">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip(); 
        });
    </script>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server"></asp:Label></h3>

    <asp:GridView ID="GridViewUsuarios" CssClass="table table-bordered table-striped table-hover" runat="server" UseAccessibleHeader="true" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idUsuario" DataSourceID="SqlDataSourceUsuarios" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="1000px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
            <asp:BoundField DataField="correo" HeaderText="Mail" SortExpression="correo" />
            <asp:BoundField DataField="Expr1" HeaderText="Rol" SortExpression="Expr1" />
            <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-primary" ShowSelectButton="True" />
        </Columns>
       
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Proyecto;Integrated Security=True" DeleteCommand="DELETE FROM [Usuario] WHERE [idUsuario] = @idUsuario" InsertCommand="INSERT INTO [Usuario] ([nombre], [contraseña], [correo], [idPerfil]) VALUES (@nombre, @contraseña, @correo, @idPerfil)" SelectCommand="SELECT Usuario.idUsuario, Usuario.nombre, Usuario.contraseña, Usuario.correo, Usuario.idPerfil, Perfil.nombre AS Expr1, Perfil.descripcion FROM Usuario INNER JOIN Perfil ON Usuario.idPerfil = Perfil.idPerfil" UpdateCommand="UPDATE [Usuario] SET [nombre] = @nombre, [contraseña] = @contraseña, [correo] = @correo, [idPerfil] = @idPerfil WHERE [idUsuario] = @idUsuario">
        <DeleteParameters>
            <asp:Parameter Name="idUsuario" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="contraseña" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="idPerfil" Type="Byte" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="contraseña" Type="String" />
            <asp:Parameter Name="correo" Type="String" />
            <asp:Parameter Name="idPerfil" Type="Byte" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

