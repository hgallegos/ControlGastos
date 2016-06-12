<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="FormGastos.aspx.vb" Inherits="FormGastos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
   <h2>Nuevo Gasto</h2>
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
            nombre:
            <asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' />
            <br />
            descripcion:
            <asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="tabla_formulario">
                <tr>
                     <td>Monto:</td>
                     <td style="width: 129px"><asp:TextBox ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' Height="28px" Width="217px" /></td>
                     <td style="width: 584px">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorMonto" runat="server" ControlToValidate="montoTextBox" ErrorMessage="Debe ingresar un monto"></asp:RequiredFieldValidator></td>
                     </tr>
                <tr>
                  
                    <td>Fecha:</td>
                    <td style="width: 129px">
                        <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("fecha") %>' CellPadding="0" Width="217px"></asp:Calendar>
                    </td>
                      <td></td>
                </tr>
                <tr>
                    <td>idUsuario:</td>
                    <td style="width: 129px"><asp:TextBox ID="idUsuarioTextBox" runat="server" Text='<%# Bind("idUsuario") %>' Height="28px" Width="217px" /></td>
                    <td style="width: 584px"> <asp:RequiredFieldValidator ID="RequiredFieldValidatorIdUsuario" runat="server" ControlToValidate="idUsuarioTextBox" ErrorMessage="Debe ingresar un idUsuario"></asp:RequiredFieldValidator></td>
                     </tr>
                </tr>
                <tr>
                    <td>Subcategoria:</td>
                    <td style="width: 129px">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceSubcategorias" DataTextField="nombre" DataValueField="idSubcategoria" Height="28px" SelectedIndex='<%# Bind("idSubcategoria") %>' SelectedValue='<%# bind("idSubcategoria") %>' Width="217px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceSubcategorias" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT [nombre], [idSubcategoria] FROM [Subcategoria] ORDER BY [nombre] DESC"></asp:SqlDataSource>
                    </td>
                      <td></td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td style="width: 129px"><asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' Height="28px" Width="217px" /></td>
                    <td style="width: 584px"><asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ControlToValidate="nombreTextBox" ErrorMessage="Debe ingresar un nombre"></asp:RequiredFieldValidator></td>
                   </tr>

                </tr>
                <tr>
                    <td>Descripcion:</td>

                    <td style="width: 129px"><asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' Height="28px" Width="217px" /></td>
                   <td style="width: 584px"> <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" ControlToValidate="descripcionTextBox" ErrorMessage="Debe ingresar una descripción"></asp:RequiredFieldValidator></td>
                </tr>
  
            </table>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
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
            nombre:
            <asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' />
            <br />
            descripcion:
            <asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Gasto] WHERE [idGasto] = @idGasto" InsertCommand="INSERT INTO [Gasto] ([monto], [fecha], [idUsuario], [idSubcategoria]) VALUES (@monto, @fecha, @idUsuario, @idSubcategoria)" SelectCommand="SELECT Gasto.idGasto, Gasto.monto, Gasto.fecha, Gasto.idUsuario, Gasto.idSubcategoria, Subcategoria.nombre, Subcategoria.descripcion FROM Gasto INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria" UpdateCommand="UPDATE [Gasto] SET [monto] = @monto, [fecha] = @fecha, [idUsuario] = @idUsuario, [idSubcategoria] = @idSubcategoria WHERE [idGasto] = @idGasto">
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
</asp:Content>

