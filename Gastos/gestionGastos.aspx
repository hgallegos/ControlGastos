<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionGastos.aspx.vb" Inherits="ingresos" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center" >Gestión de gastos</h2>
    <div class="text-center">
        <div class="btn-group" role="group">
        <a class="btn btn-default" data-toggle="tooltip" title="Agregar gasto" href="FormGastos.aspx">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip(); 
        });
    </script>
    <h3 style="text-align: center" ><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label> </h3>
      <asp:GridView ID="GridViewGastos" CssClass="table table-bordered table-striped table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceGastos" Width="1000px" DataKeyNames="idGasto" UseAccessibleHeader="true" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:BoundField DataField="monto" HeaderText="Monto" SortExpression="monto" />
              <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
              <asp:BoundField DataField="nombre" HeaderText="SubCategoria" SortExpression="nombre" />
              <asp:BoundField DataField="Expr1" HeaderText="Categoria" SortExpression="Expr1" />
              <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-primary" SelectText="Ver Detalles" ShowSelectButton="True" />
          </Columns>
          <EditRowStyle BackColor="#999999" />
          <EmptyDataTemplate>
             <h3 style="text-align: center">No tienes gastos especificados</h3>
          </EmptyDataTemplate>
         
          <SortedAscendingCellStyle BackColor="#E9E7E2" />
          <SortedAscendingHeaderStyle BackColor="#506C8C" />
          <SortedDescendingCellStyle BackColor="#FFFDF8" />
          <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT Gasto.idGasto, Gasto.monto, Gasto.fecha, Gasto.idSubcategoria, Subcategoria.nombre, Categoria.nombre AS Expr1 FROM Gasto INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria INNER JOIN Categoria ON Subcategoria.idCategoria = Categoria.idCategoria ORDER BY Gasto.fecha DESC"></asp:SqlDataSource>

   
   
</asp:Content>

