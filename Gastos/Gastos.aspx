<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Gastos.aspx.vb" Inherits="ingresos" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center" >Gestion de gastos</h2>
    <h4 style="text-align: center"><a href="FormGastos.aspx">Nuevo Gasto</a></h4>
    <h3 style="text-align: center" ><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label> </h3>
      <asp:GridView ID="GridViewGastos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceGastos" Width="1024px" DataKeyNames="idGasto" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:BoundField DataField="monto" HeaderText="Monto" SortExpression="monto" />
              <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
              <asp:BoundField DataField="nombre" HeaderText="SubCategoria" SortExpression="nombre" />
              <asp:BoundField DataField="Expr1" HeaderText="Categoria" SortExpression="Expr1" />
              <asp:CommandField SelectText="Ver Detalles" ShowSelectButton="True" />
          </Columns>
          <EditRowStyle BackColor="#999999" />
          <EmptyDataTemplate>
             <h3 style="text-align: center">No tienes gastos especificados</h3>
          </EmptyDataTemplate>
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
      <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT Gasto.idGasto, Gasto.monto, Gasto.fecha, Gasto.idSubcategoria, Subcategoria.nombre, Categoria.nombre AS Expr1 FROM Gasto INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria INNER JOIN Categoria ON Subcategoria.idCategoria = Categoria.idCategoria ORDER BY Gasto.fecha DESC"></asp:SqlDataSource>

   
   
</asp:Content>

