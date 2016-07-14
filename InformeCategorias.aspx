<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="InformeCategorias.aspx.vb" Inherits="InformeCategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h1 style="text-align: center">
        <asp:Label ID="LabelTitulo" runat="server" Text="Gastos por categoria"></asp:Label></h1>
    <p style="text-align: center">
        &nbsp;</p>

    <asp:GridView ID="GridViewGastos" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceGastos" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="500px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Categoria" SortExpression="nombre" />
            <asp:BoundField DataField="TotalCategoria" HeaderText="Gastos" SortExpression="TotalCategoria" />
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
    <br />

    <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [GastosCategoria]"></asp:SqlDataSource>

    <div class="row">
        <div class="col-lg-12" style="text-align: center">
            <asp:Label ID="LabelCategoriaMaxima" runat="server" Text="" CssClass="alert alert-warning" Width="500"></asp:Label>
        </div>
    </div>
     <div class="row">
        <div class="col-lg-12" style="text-align: center">
            <asp:Label ID="LabelCategoriaMinima" runat="server" Text="" CssClass="alert alert-info" Width="500"></asp:Label>
        </div>
    </div>
    

</asp:Content>

