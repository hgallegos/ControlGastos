<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionAportes.aspx.vb" Inherits="Aportes_gestionAportes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <h2 style="text-align: center">Gestión de aportes</h2>
    <div class="text-center">
        <div class="btn-group" role="group">
        <a class="btn btn-default" data-toggle="tooltip" title="Nuevo aporte" href="formAporte.aspx">
            <span class="glyphicon glyphicon-plus"></span>
        </a>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip(); 
        });
    </script>
    <h3 style="text-align: center">
        <asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:GridView ID="GridViewAportes" CssClass="table table-bordered table-striped table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" UseAccessibleHeader="true" CellPadding="4" DataKeyNames="idAporte" DataSourceID="SqlDataSourceAportes" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="1000px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre conviviente" SortExpression="nombre" />
            <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
            <asp:BoundField DataField="monto" HeaderText="Monto" SortExpression="monto" />
            <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-sm  btn-primary" ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSourceAportes" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Aporte] WHERE [idAporte] = @idAporte" InsertCommand="INSERT INTO [Aporte] ([monto], [fecha], [IdUsuario]) VALUES (@monto, @fecha, @IdUsuario)" SelectCommand="SELECT Aporte.idAporte, Aporte.monto, Aporte.fecha, Aporte.IdUsuario, Usuario.nombre FROM Aporte INNER JOIN Usuario ON Aporte.IdUsuario = Usuario.idUsuario" UpdateCommand="UPDATE [Aporte] SET [monto] = @monto, [fecha] = @fecha, [IdUsuario] = @IdUsuario WHERE [idAporte] = @idAporte">
        <DeleteParameters>
            <asp:Parameter Name="idAporte" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="IdUsuario" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="IdUsuario" Type="Int32" />
            <asp:Parameter Name="idAporte" Type="Int32" />
        </UpdateParameters>
     </asp:SqlDataSource>

</asp:Content>

