<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionIngresos.aspx.vb" Inherits="Ingresos_gestionIngresos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Gestión de ingresos de dinero</h2>
    <h4 style="text-align: center"><a href="formIngreso.aspx" >Nuevo ingreso</a></h4>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:GridView ID="GridViewIngresos" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idIngreso" DataSourceID="SqlDataSourceIngresos" ForeColor="#333333" GridLines="None" Height="198px" Width="600px" BorderStyle="Inset" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="descripcion" HeaderText="Descripción" SortExpression="descripcion" />
            <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
            <asp:BoundField DataField="cantidad" HeaderText="Cantidad" SortExpression="cantidad" />
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
            <asp:CommandField ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSourceIngresos" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Proyecto;Integrated Security=True" SelectCommand="SELECT Ingreso.idIngreso, Ingreso.descripcion, Ingreso.fecha, Ingreso.cantidad, Ingreso.idUsuario, Usuario.nombre FROM Ingreso INNER JOIN Usuario ON Ingreso.idUsuario = Usuario.idUsuario"></asp:SqlDataSource>
</asp:Content>

