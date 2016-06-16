<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="FormGastos.aspx.vb" Inherits="FormGastos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
   <h2>Nuevo Gasto</h2>
    <asp:Label ID="labelGasto" runat="server" Text='' />
    <asp:FormView ID="FormViewGastos" runat="server" DataKeyNames="idGasto" DataSourceID="SqlDataSourceGastos" Width="674px">
        <EditItemTemplate>
            idGasto:
            <asp:Label ID="idGastoLabel1" runat="server" Text='<%# Eval("idGasto") %>' />
            <br />
            monto:
            <asp:TextBox ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' />
            <br />
            fecha:
            <asp:TextBox ID="fechaTextBox" runat="server" Text='<%# Bind("fecha") %>' />
            <br />
            idUsuario:
            <asp:TextBox ID="idUsuarioTextBox" runat="server" Text='<%# Bind("idUsuario") %>' />
            <br />
            idSubcategoria:
            <asp:TextBox ID="idSubcategoriaTextBox" runat="server" Text='<%# Bind("idSubcategoria") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <tr>
                    <td>monto:</td>
                    <td><asp:TextBox ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' /></td>
                    <td></td>
                </tr>
                <tr>
                    <td>fecha:</td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" SelectedDate='<%# Bind("fecha") %>' Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>idUsuario:</td>
                    <td><asp:TextBox ID="idUsuarioTextBox" runat="server" Text='<%# Bind("idUsuario") %>' /></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Subcategoria:</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceSubCategorias" DataTextField="nombre" DataValueField="idSubcategoria" SelectedIndex='<%# Eval("idSubcategoria") %>' SelectedValue='<%# Bind("idSubcategoria") %>' Width="129px" ></asp:DropDownList></td>
                    <td></td>
                </tr>
            </table>
            
            
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar"  />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>

        <ItemTemplate>
            idGasto:
            <asp:Label ID="idGastoLabel" runat="server" Text='<%# Eval("idGasto") %>' />
            <br />
            monto:
            <asp:Label ID="montoLabel" runat="server" Text='<%# Bind("monto") %>' />
            <br />
            fecha:
            <asp:Label ID="fechaLabel" runat="server" Text='<%# Bind("fecha") %>' />
            <br />
            idUsuario:
            <asp:Label ID="idUsuarioLabel" runat="server" Text='<%# Bind("idUsuario") %>' />
            <br />
            idSubcategoria:
            <asp:Label ID="idSubcategoriaLabel" runat="server" Text='<%# Bind("idSubcategoria") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Gasto] WHERE [idGasto] = @idGasto" InsertCommand="INSERT INTO [Gasto] ([monto], [fecha], [idUsuario], [idSubcategoria]) VALUES (@monto, @fecha, @idUsuario, @idSubcategoria)" SelectCommand="SELECT Gasto.idGasto, Gasto.monto, Gasto.fecha, Gasto.idUsuario, Gasto.idSubcategoria, Subcategoria.nombre FROM Gasto INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria" UpdateCommand="UPDATE [Gasto] SET [monto] = @monto, [fecha] = @fecha, [idUsuario] = @idUsuario, [idSubcategoria] = @idSubcategoria WHERE [idGasto] = @idGasto">
        <DeleteParameters>
            <asp:Parameter Name="idGasto" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
            <asp:Parameter Name="idSubcategoria" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
            <asp:Parameter Name="idSubcategoria" Type="Int32" />
            <asp:Parameter Name="idGasto" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceSubCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT [idSubcategoria], [nombre] FROM [Subcategoria]"></asp:SqlDataSource>
    <br />
</asp:Content>

