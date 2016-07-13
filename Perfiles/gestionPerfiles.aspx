<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionPerfiles.aspx.vb" Inherits="Usuarios_gestionPerfiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 style="text-align:center">Gesti&oacute;n de perfiles</h2>
    <div class="text-center">
        <div class="btn-group" role="group">
        <a class="btn btn-default" data-toggle="tooltip" title="Nuevo perfil" href="formPerfiles.aspx">
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
        <asp:GridView ID="GridViewPerfiles" CssClass="table table-bordered table-striped table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idPerfil" UseAccessibleHeader="true" DataSourceID="SqlDataSourcePerfiles" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="1000px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="idPerfil" HeaderText="#" ReadOnly="True" SortExpression="idPerfil" />
                <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                <asp:BoundField DataField="descripcion" HeaderText="Descripcion" SortExpression="descripcion" />
                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-sm  btn-primary" ShowSelectButton="True" />
            </Columns>
       
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcePerfiles" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Perfil]"></asp:SqlDataSource>


</asp:Content>

