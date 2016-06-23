<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="gestionPerfiles.aspx.vb" Inherits="Usuarios_gestionPerfiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 style="text-align:center">Gesti&oacute;n de perfiles</h2>
    <h4 style="text-align:center"><a href="formPerfiles.aspx">Nuevo perfil</a></h4>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server"></asp:Label></h3>
        <asp:GridView ID="GridViewPerfiles" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idPerfil" DataSourceID="SqlDataSourcePerfiles" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="600px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="idPerfil" HeaderText="#" ReadOnly="True" SortExpression="idPerfil" />
                <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                <asp:BoundField DataField="descripcion" HeaderText="Descripcion" SortExpression="descripcion" />
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
        <asp:SqlDataSource ID="SqlDataSourcePerfiles" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Perfil]"></asp:SqlDataSource>


</asp:Content>

