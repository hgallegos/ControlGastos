<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionIngresos.aspx.vb" Inherits="Ingresos_gestionIngresos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Gestión de ingresos de dinero</h2>
    <div class="text-center">
        <div class="btn-group" role="group">
        <a class="btn btn-default" data-toggle="tooltip" title="Agregar ingreso" href="formIngreso.aspx">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip(); 
        });
    </script>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:GridView ID="GridViewIngresos" CssClass="table table-bordered table-striped table-hover" runat="server" AllowPaging="True" AllowSorting="True" UseAccessibleHeader="true" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idIngreso" DataSourceID="SqlDataSourceIngresos" ForeColor="#333333" GridLines="None" Width="1000px" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="descripcion" HeaderText="Descripción" SortExpression="descripcion" />
            <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
            <asp:BoundField DataField="cantidad" HeaderText="Cantidad" SortExpression="cantidad" />
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
            <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-sm  btn-primary" ShowSelectButton="True" />
        </Columns>
     
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceIngresos" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Proyecto;Integrated Security=True" SelectCommand="SELECT Ingreso.idIngreso, Ingreso.descripcion, Ingreso.fecha, Ingreso.cantidad, Ingreso.idUsuario, Usuario.nombre FROM Ingreso INNER JOIN Usuario ON Ingreso.idUsuario = Usuario.idUsuario"></asp:SqlDataSource>
</asp:Content>

