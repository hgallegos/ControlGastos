<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionAhorros.aspx.vb" Inherits="Ahorro_gestionAhorros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Gestión de ahorros</h2>
    <h4 style="text-align: center"><a href="formAhorro.aspx">Nuevo ahorro</a></h4>
    <h3 style="text-align: center">
        <asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:GridView ID="GridViewAhorro" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idAhorro" DataSourceID="SqlDataSourceAhorro" ForeColor="#333333" GridLines="None" Width="600px" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" DataFormatString="{0:C0}" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" DataFormatString="{0:d}" />
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




    <asp:SqlDataSource ID="SqlDataSourceAhorro" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ControlGastosConnectionString %>" 
        DeleteCommand="DELETE FROM [Ahorro] WHERE [idAhorro] = @original_idAhorro" 
        InsertCommand="INSERT INTO [Ahorro] ([Monto], [Fecha], [idUsuario]) VALUES (@Monto, @Fecha, @idUsuario)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT Ahorro.idAhorro, Ahorro.Monto, Ahorro.Fecha, Ahorro.idUsuario, Usuario.nombre FROM Ahorro INNER JOIN Usuario ON Ahorro.idUsuario = Usuario.idUsuario" 
        UpdateCommand="UPDATE [Ahorro] SET [Monto] = @Monto, [Fecha] = @Fecha, [idUsuario] = @idUsuario WHERE [idAhorro] = @original_idAhorro">
        <DeleteParameters>
            <asp:Parameter Name="original_idAhorro" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Fecha" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Fecha" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
            <asp:Parameter Name="original_idAhorro" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

