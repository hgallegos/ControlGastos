<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="FormGastos.aspx.vb" Inherits="FormGastos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h2 >Nuevo Gasto</h2>
    <asp:Label ID="labelGasto" runat="server" Text='' />
    <asp:FormView ID="FormViewGastos" runat="server" DataKeyNames="idGasto" DataSourceID="SqlDataSourceGastos" Width="674px" DefaultMode="Insert">
        <EditItemTemplate>
            <table class="tabla_formulario">
                <tr>           
            
                    <td class="etiqueta" style="width: 80px">id</td>
                    <td style="width: 250px"><asp:Label ID="idGastoLabel1" runat="server" Text='<%# Eval("idGasto") %>' /></td>
                   
                </tr>
                <tr>           
            
                    <td class="etiqueta" style="width: 80px">Monto:</td>
                    <td><asp:TextBox ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' /></td>
                  
                </tr>
                <tr>           
           
                    <td class="etiqueta" style="width: 80px">Fecha:</td>
                    <td style="width: 250px" > <asp:TextBox ID="fechaTextBox" runat="server" Text='<%# Bind("fecha") %>' /> </td>
                    
                </tr>
                <tr>                              
            
                    <td class="etiqueta" style="width: 80px">Usuario:</td>
                    <td style="width: 250px" > <asp:TextBox ID="idUsuarioTextBox" runat="server" Text='<%# Bind("idUsuario") %>' /></td>
                    
                </tr>
                <tr>         
            
                    <td class="etiqueta" style="width: 80px">Subcategoria:</td>
                    <td style="width: 250px" > <asp:TextBox ID="idSubcategoriaTextBox" runat="server" Text='<%# Bind("idSubcategoria") %>' /></td>
 

                </tr>
            </table>

        
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="tabla_formulario">
                <tr>
                    <td class="etiqueta" style="width: 80px">monto:</td>
                    <td style="width: 250px"><asp:TextBox ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' /></td>
                    <td class="error" ><asp:RequiredFieldValidator ID="RequiredFieldValidatorMonto" runat="server" ControlToValidate="MontoTextBox" ErrorMessage="Debes ingresar un monto."></asp:RequiredFieldValidator></td>

                </tr>
                <tr>
                    <td class="etiqueta" style="width: 80px">fecha:</td>
                    <td style="width: 250px">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" SelectedDate='<%# Bind("fecha")%>' Width="350px">
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
                    <td class="etiqueta" style="width: 80px">Usuario:</td>
                    <td style="width: 250px">
                        <asp:DropDownList ID="DropDownListUsuario" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario" SelectedValue='<%# Bind("idUsuario") %>'>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="etiqueta" style="width: 80px">Subcategoria:</td>
                    <td><asp:DropDownList ID="DropDownListSubcategoria" runat="server" DataSourceID="SqlDataSourceSubCategorias" DataTextField="nombre" DataValueField="idSubcategoria" SelectedIndex='<%# Eval("idSubcategoria") %>' SelectedValue='<%# Bind("idSubcategoria") %>' Width="129px" ></asp:DropDownList></td>
                    <td></td>
                </tr>
            </table>
            
            
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar"  />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>

        <ItemTemplate>

            idGasto:
            <asp:Label ID="idGastoLabel" runat="server" Text='<%# Eval("idGasto")%>' />
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
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Gasto] WHERE [idGasto] = @idGasto" InsertCommand="INSERT INTO [Gasto] ([monto], [fecha], [idUsuario], [idSubcategoria]) VALUES (@monto, @fecha, @idUsuario, @idSubcategoria); SELECT @idNuevoGasto = SCOPE_IDENTITY();" SelectCommand="SELECT Gasto.idGasto, Gasto.monto, Gasto.fecha, Gasto.idUsuario, Gasto.idSubcategoria, Subcategoria.nombre FROM Gasto INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria WHERE (Gasto.idGasto = @idGasto )" UpdateCommand="UPDATE [Gasto] SET [monto] = @monto, [fecha] = @fecha, [idUsuario] = @idUsuario, [idSubcategoria] = @idSubcategoria WHERE [idGasto] = @idGasto">
        <DeleteParameters>
            <asp:Parameter Name="idGasto" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
            <asp:Parameter Name="idSubcategoria" Type="Int32" />
            <asp:Parameter Name='idNuevoGasto' Direction="Output" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idGasto" QueryStringField="idGasto" Type="Int32" />
        </SelectParameters>
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
    <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
    <br />
    <h3>
        <asp:Label ID="LabelAgregarDetalle" runat="server" Text="Agregar Detalle"></asp:Label></h3>
    <br />
    <asp:FormView ID="FormViewDetalleGasto" runat="server" DataSourceID="SqlDataSourceDetalle" DefaultMode="Insert" Height="54px" Width="445px" DataKeyNames="idDetalle">
        <EditItemTemplate>
           
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <tr>
                    <td class="etiqueta" style="width: 80px">Elemento:</td>
                    <td style="width: 250px"> <asp:DropDownList ID="DropDownListElementos" runat="server" DataSourceID="SqlDataSourceElementos" DataTextField="elemento"  DataValueField="idElemento" SelectedValue='<%# Bind("idElemento") %>'></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceElementos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT nombre + '  $' + CAST(monto AS varchar) AS elemento, idElemento FROM Elemento"></asp:SqlDataSource>
                    </td>
                    <td></td>

                </tr>
                <tr>
                   <td class="etiqueta" style="width: 80px">Cantidad:</td>
                   <td style="width: 250px"><asp:TextBox ID="cantidadTextBox" runat="server" Text='<%# Bind("Cantidad") %>' /></td>
                    <td style="width: 250px"><asp:RequiredFieldValidator ID="RequiredFieldValidatorCantidad" runat="server" 
                            ErrorMessage="Debe Ingresar una cantidad" ControlToValidate="cantidadTextBox"></asp:RequiredFieldValidator> </td>
                </tr>
            </table>
           
        
          
        
           
      
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Agregar" />
            <asp:TextBox ID="idGastoTextBox" runat="server" onload="idGastoTextBox_Load" Text='<%# Bind("idGasto") %>' />
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
         
        </InsertItemTemplate>
        <ItemTemplate>
            idDetalle:
            <asp:Label ID="idDetalleLabel" runat="server" Text='<%# Eval("idDetalle") %>' />
            <br />
            idGasto:
            <asp:Label ID="idGastoLabel" runat="server" Text='<%# Bind("idGasto") %>' />
            <br />
            idElemento:
            <asp:Label ID="idElementoLabel" runat="server" Text='<%# Bind("idElemento") %>' />
            <br />
            Cantidad:
            <asp:Label ID="CantidadLabel" runat="server" Text='<%# Bind("Cantidad") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceDetalle" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [DetalleGasto] WHERE [idDetalle] = @idDetalle" InsertCommand="INSERT INTO DetalleGasto(idGasto, idElemento, Cantidad) VALUES (@idGasto, @idElemento, @Cantidad) SELECT @idGastoActual=@idGasto;" SelectCommand="SELECT * FROM [DetalleGasto] WHERE ([idGasto] = @idGasto)" UpdateCommand="UPDATE [DetalleGasto] SET [idGasto] = @idGasto, [idElemento] = @idElemento, [Cantidad] = @Cantidad WHERE [idDetalle] = @idDetalle">
        <DeleteParameters>
            <asp:Parameter Name="idDetalle" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idGasto" Type="Int32" />
            <asp:Parameter Name="idElemento" Type="Int32" />
            <asp:Parameter Name="Cantidad" Type="Int32" />
          <asp:Parameter  Name="idGastoActual" Direction="Output" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="idGasto" QueryStringField="idGasto" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="idGasto" Type="Int32" />
            <asp:Parameter Name="idElemento" Type="Int32" />
            <asp:Parameter Name="Cantidad" Type="Int32" />
            <asp:Parameter Name="idDetalle" Type="Int32" />
       
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <h3><asp:Label ID="LabelVerDetalles" runat="server" Text="Detalle gasto"></asp:Label></h3>
    <asp:GridView ID="GridViewDetalle" runat="server" AllowPaging="True" CellPadding="4" DataSourceID="SqlDataSourceDetalleGastos" ForeColor="#333333" GridLines="None" Width="322px" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
            <asp:BoundField DataField="monto" DataFormatString="{0:c0}" HeaderText="monto" SortExpression="monto" />
            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
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
    <asp:SqlDataSource ID="SqlDataSourceDetalleGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT Elemento.nombre, DetalleGasto.Cantidad, Elemento.monto, DetalleGasto.Cantidad * Elemento.monto AS total FROM Elemento INNER JOIN DetalleGasto ON Elemento.idElemento = DetalleGasto.idElemento INNER JOIN Gasto ON DetalleGasto.idGasto = Gasto.idGasto INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria INNER JOIN Categoria ON Subcategoria.idCategoria = Categoria.idCategoria WHERE (DetalleGasto.idGasto = @idGasto)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idGasto" QueryStringField="idGasto" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

