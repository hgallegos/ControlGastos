﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="DetalleGastos.aspx.vb" Inherits="DetalleGastoaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 style="text-align: center">Detalle Gasto</h2>
    
        <asp:GridView ID="GridViewDetalleGasto" runat="server" AllowSorting="True" CssClass="table table-bordered table-striped table-hover" UseAccessibleHeader="true" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idDetalle" DataSourceID="SqlDataSourceDetalleGastos" ForeColor="#333333" GridLines="None" Width="944px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <h3>Este gasto no tiene detalle</h3>
        </EmptyDataTemplate>
      
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView> 
    <asp:SqlDataSource ID="SqlDataSourceDetalleGastos" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Proyecto;Integrated Security=True" SelectCommand="SELECT DetalleGasto.idDetalle, DetalleGasto.idElemento, DetalleGasto.Cantidad, DetalleGasto.idGasto, Elemento.descripcion, Elemento.monto, Elemento.nombre FROM DetalleGasto INNER JOIN Elemento ON DetalleGasto.idElemento = Elemento.idElemento WHERE (DetalleGasto.idGasto = @idGasto)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idGasto" QueryStringField="idGasto" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

