<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionElementos.aspx.vb" Inherits="Elementos_gestionElementos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 style="text-align:center">Gesti&oacute;n de elementos</h2>
    <div class="text-center">
        <div class="btn-group" role="group">
        <a class="btn btn-default" data-toggle="tooltip" title="Agregar elemento" href="formElementos.aspx">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip(); 
        });
    </script>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server"></asp:Label></h3>
    <asp:GridView ID="GridViewElementos" CssClass="table table-bordered table-striped table-hover" runat="server" AllowPaging="True" UseAccessibleHeader="true" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idElemento" DataSourceID="SqlDataSourceElementos" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="1000px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="idElemento" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="idElemento" />
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
            <asp:BoundField DataField="descripcion" HeaderText="Descripci&oacute;n" SortExpression="descripcion" />
            <asp:BoundField DataField="monto" HeaderText="Monto" SortExpression="monto" />
            <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-small btn-primary" ShowSelectButton="True"/>
        </Columns>
        
        
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceElementos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Elemento]"></asp:SqlDataSource>
</asp:Content>

