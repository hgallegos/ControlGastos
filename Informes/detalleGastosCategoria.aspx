<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="detalleGastosCategoria.aspx.vb" Inherits="Informes_detalleGastosCategoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Detalle de gastos</h2>

    <asp:GridView ID="GridViewDetalleGastos" runat="server" HorizontalAlign="Center" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceDetalleGastos" ForeColor="#333333" GridLines="None" DataKeyNames="ID Elemento">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Elemento" HeaderText="Elemento" SortExpression="Elemento" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            <asp:BoundField DataField="Fecha de la compra" HeaderText="Fecha de la compra" SortExpression="Fecha de la compra" />
            <asp:BoundField DataField="Subcategoria" HeaderText="Subcategoria" SortExpression="Subcategoria" />
            <asp:BoundField DataField="ID Elemento" HeaderText="ID Elemento" ReadOnly="True" SortExpression="ID Elemento" />
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
    <asp:SqlDataSource ID="SqlDataSourceDetalleGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString2 %>" SelectCommand="SELECT * FROM [ElementoUsuario]"></asp:SqlDataSource>
</asp:Content>

