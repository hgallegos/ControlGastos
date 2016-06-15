<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Informes.aspx.vb" Inherits="Informes_Informes" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Gastos por categoria</h2>
    <p style="text-align: center">&nbsp;</p>

    <asp:GridView ID="GridViewGastosCategoria" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceGastosCategoria" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" BorderStyle="Ridge" CssClass="table-bordered">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
            <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
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
    <asp:SqlDataSource ID="SqlDataSourceGastosCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString2 %>" SelectCommand="SELECT * FROM [GastosPorCategoria] ORDER BY [TOTAL] DESC"></asp:SqlDataSource>
    

    <br />
    

    <table style="width: 100%"  >
        <tr><td style="text-align: center"><asp:Button ID="ButtonGenerarInforme" runat="server" CssClass="btn-primary" Text="Generar informe" /></td></tr>
    </table>
   
    
    <br />
    <h4>
        <asp:Label ID="LabelMayorGasto" runat="server" Text="La categoría en la que más se ha invertido es: " Visible="False"></asp:Label>
    </h4>
    <h4>
        <asp:Label ID="LabelMenorGasto" runat="server" Text="La categoría en la que menos se ha invertido es: " Visible="False"></asp:Label>
    </h4>
</asp:Content>

