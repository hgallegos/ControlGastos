<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="detalleGastosCategoria.aspx.vb" Inherits="Informes_detalleGastosCategoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Detalle de gastos</h2>

    <asp:GridView ID="GridViewDetalleGastos" runat="server" HorizontalAlign="Center"></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceDetalleGastos" runat="server"></asp:SqlDataSource>
</asp:Content>

