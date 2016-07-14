<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionGastos.aspx.vb" Inherits="ingresos" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center" >Gestión de gastos</h2>
    <div class="text-center">
        <div class="btn-group" role="group">
        <button class="btn btn-default" data-toggle="modal" title="Agregar gasto"  data-target="#modal-1">
            <span class="glyphicon glyphicon-plus"></span>
        </button>
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
 
 
    <div class="container">
    <div class="modal fade" id="modal-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 class="modal-title">¿Desea detallar su gasto?</h3>
                </div>
                <div class="modal-body">
                    
                        <div class="container">  
                            <div class="row">
                                <div class="col-sm-8">
                                 
                        <button class="btn-submit center" type="submit" ><a href="FormGastosDetalle.aspx">Si</a></button>
                       
                        <button class="btn-submit center" type="submit" ><a href="FormGastos.aspx">No</a></button>
                                   
                                </div>
                            </div>
                        </div>
                    
                </div>
            </div>
            
        </div>
    </div>
</div>

   
   
</asp:Content>

