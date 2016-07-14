<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="FormGastosDetalle.aspx.vb" Inherits="FormGastos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h2 >Nuevo Gasto</h2>
        <div class="row">
        <div class="col-lg-12">
            <div class="container">
    <asp:Label ID="labelGasto" runat="server" Text=' ' data-dismiss="alert" />
    &nbsp;<br />
&nbsp;<asp:FormView ID="FormViewGastos" runat="server" DataKeyNames="idGasto" DataSourceID="SqlDataSourceGastos" Width="680px" DefaultMode="Insert" HorizontalAlign="Center">
        <EditItemTemplate>
            <table class="table table-bordered">
                <tr>           
            
                    <th class="etiqueta" style="width: 80px">id</th>
                    <td style="width: 250px"><asp:Label ID="idGastoLabel1" runat="server" Text='<%# Eval("idGasto") %>' /></td>
                   
                </tr>
                <tr>           
            
                    <th class="etiqueta" style="width: 80px">Monto:</th>
                    <td><asp:TextBox CssClass="form-control" ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' /></td>
                  
                </tr>
                <tr>           
           
                    <th class="etiqueta" style="width: 80px">Fecha:</th>
                    <td style="width: 250px" > <asp:TextBox ID="fechaTextBox" runat="server" Text='<%# Bind("fecha") %>' /> </td>
                    
                </tr>
                <tr>                              
            
                    <th class="etiqueta" style="width: 80px">Usuario:</th>
                    <td style="width: 250px" ><asp:DropDownList style="width: 250px" ID="DropDownListUsuarioEdit" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario"></asp:DropDownList> </td>
                    
                </tr>
                <tr>         
            
                    <th class="etiqueta" style="width: 80px">Subcategoria:</th>
                    <td style="width: 250px" > 
                        <asp:DropDownList style="width: 250px" ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceSubCategorias" DataTextField="nombre" DataValueField="idSubcategoria">
                        </asp:DropDownList>
                    </td>
 

                </tr>
            </table>

        
            <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="table table-bordered">

                <tr>
                    <th class="etiqueta" style="width: 80px">Fecha:</th>
                    <td style="width: 250px">
                        <asp:Calendar style="width: 250px" ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" SelectedDate='<%# Bind("fecha")%>' Width="350px" >
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
                    <th class="etiqueta" style="width: 80px">Usuario:</th>
                    <td style="width: 250px">
                        <asp:DropDownList ID="DropDownListUsuario" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario" SelectedValue='<%# Bind("idUsuario") %>'>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th class="etiqueta" style="width: 80px">Subcategoria:</th>
                    <td style="width: 250px"><asp:DropDownList CssClass="form-control" ID="DropDownListSubcategoria" runat="server" DataSourceID="SqlDataSourceSubCategorias" DataTextField="nombre" DataValueField="idSubcategoria" SelectedIndex='<%# Eval("idSubcategoria") %>' SelectedValue='<%# Bind("idSubcategoria") %>' Width="129px" ></asp:DropDownList></td>
                    <td></td>
                </tr>
            </table>
            
            
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertButton" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Agregar"  />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>

        <ItemTemplate>
            <table class="table table-bordered">
                <tr>            
           
                    <td>Id:</td>
                    <td> <asp:Label ID="idGastoLabel" runat="server" Text='<%# Eval("idGasto")%>' /></td>
                </tr>
                <tr>
                               
                    <td>Monto:</td>
                    <td><asp:Label ID="montoLabel" runat="server" Text='<%# Bind("monto") %>' /></td>
                </tr>
                <tr>            
            
                    <td>Fecha:</td>
                    <td><asp:Label ID="fechaLabel" runat="server" Text='<%# Bind("fecha") %>' /></td>
                </tr>
                <tr>                             
                    <td>Usuario:</td>
                    <td><asp:Label ID="idUsuarioLabel" runat="server" Text='<%# Bind("idUsuario") %>' /></td>
                </tr>
                <tr>   
                    <td>Subcategoria:</td>
                    <td><asp:Label ID="idSubcategoriaLabel" runat="server" Text='<%# Bind("idSubcategoria") %>' /></td>
                </tr>

                <tr>
                    <td>           <asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
</td>
                </tr>

             
            
                </table>
        </ItemTemplate>
    </asp:FormView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Gasto] WHERE [idGasto] = @idGasto" InsertCommand="INSERT INTO [Gasto] ([monto], [fecha], [idUsuario], [idSubcategoria]) VALUES ('0', @fecha, @idUsuario, @idSubcategoria); SELECT @idNuevoGasto = SCOPE_IDENTITY();" SelectCommand="SELECT Gasto.idGasto, Gasto.monto, Gasto.fecha, Gasto.idUsuario, Gasto.idSubcategoria, Subcategoria.nombre FROM Gasto INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria WHERE (Gasto.idGasto = @idGasto )" UpdateCommand="UPDATE [Gasto] SET [monto] = @monto, [fecha] = @fecha, [idUsuario] = @idUsuario, [idSubcategoria] = @idSubcategoria WHERE [idGasto] = @idGasto">
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
    <br />
    <h3>
        
        <asp:Label ID="LabelAgregarDetalle" runat="server" Text="Agregar Elemento"></asp:Label></h3>
         <asp:LinkButton ID="nuevo" CssClass="btn btn-primary" runat="server"   Text="Nuevo Elemento" />
        
    <br />
   <table class="table table-bordered">
       <td>
    <asp:FormView ID="FormViewDetalleGasto" runat="server" DataSourceID="SqlDataSourceDetalle" DefaultMode="Insert" Height="54px" Width="445px" DataKeyNames="idDetalle">
        <EditItemTemplate>
           
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="table table-bordered" >
                <tr>
                    <td class="etiqueta" style="width: 80px">Elemento:</td>
                    <td style="width: 250px"> <asp:DropDownList ID="DropDownListElementos" runat="server" DataSourceID="SqlDataSourceElementos" DataTextField="elemento"  DataValueField="idElemento" SelectedValue='<%# Bind("idElemento") %>'></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceElementos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT nombre + '  $' + CAST(monto AS varchar) AS elemento, idElemento FROM Elemento" InsertCommand="INSERT INTO Elemento(descripcion, monto, nombre) VALUES (@descripcion, @monto, @nombre)">
                            <InsertParameters>
                                <asp:Parameter Name="descripcion" />
                                <asp:Parameter Name="monto" />
                                <asp:Parameter Name="nombre" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td></td>

                </tr>
                <tr>
                   <td class="etiqueta" style="width: 80px">Cantidad:</td>
                   <td style="width: 250px"><asp:TextBox ID="cantidadTextBox" runat="server" Text='<%# Bind("Cantidad") %>' value='0' /></td>
                    <td style="width: 250px"><asp:RequiredFieldValidator ID="RequiredFieldValidatorCantidad" runat="server" 
                            ErrorMessage="Debe Ingresar una cantidad" ControlToValidate="cantidadTextBox"></asp:RequiredFieldValidator> </td>
                </tr>
            </table>
           
        
          
        
           
      
            <asp:LinkButton ID="InsertButton"  CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Agregar" />
            <asp:TextBox ID="idGastoTextBox"   runat="server" onload="idGastoTextBox_Load" Text='<%# Bind("idGasto") %>' />
            <asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
         
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
            <asp:Label ID="CantidadLabel" runat="server" Text='<%# Bind("Cantidad") %>'  ></asp:Label>
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>
           </td>
       <td>
            <asp:FormView ID="FormViewElementos" runat="server" DataKeyNames="idElemento" DataSourceID="SqlDataSourceElementos" Width="321px">
        <EditItemTemplate>
            <table class ="table table-bordered">
                <tr>
                    <th>Elemento:</th>
                    <td><asp:Label ID="idElementoLabel1" runat="server" Text='<%# Eval("idElemento") %>' /></td>
                    <td></td>
                </tr>
                <tr>
                    <th>Nombre:</th>
                    <td>
                        <asp:TextBox ID="nombreTextBox" CssClass="form-control input" runat="server" Text='<%# Bind("nombre") %>' ></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" CssClass="table-danger" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th>Descripci&oacute;n:</th>
                    <td><asp:TextBox CssClass="form-control input" ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion")%>'></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator CssClass="table-danger" ID="RequiredFieldValidatorDescripcion" runat="server" ErrorMessage="Debes ingresar una descripci&oacute;n." ControlToValidate="descripcionTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Monto:</th>
                    <td><asp:TextBox CssClass="form-control input" ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>' /></td>
                    <td><asp:RequiredFieldValidator CssClass="table-danger" ID="RequiredFieldValidatorMonto" runat="server" ErrorMessage="Debes ingresar un monto." ControlToValidate="montoTextBox"></asp:RequiredFieldValidator></td>
                </tr>
            </table>
            
            <br />
            <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"  />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class ="table table-bordered">
                <tr>
                    <th class="etiqueta">Nombre:</th>
                    <td><asp:TextBox ID="nombreTextBox" CssClass="form-control input" runat="server" Text='<%# Bind("nombre") %>' value='0' /></td>
                    <td><asp:RequiredFieldValidator CssClass="table-danger" ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Descripci&oacute;n:</th>
                    <td><asp:TextBox ID="descripcionTextBox" CssClass="form-control input" runat="server" Text='<%# Bind("descripcion")%>' value="d"></asp:TextBox></td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" CssClass="table-danger" runat="server" ErrorMessage="Debes ingresar una descripci&oacute;n" ControlToValidate="descripcionTextbox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Monto:</th>
                    <td><asp:TextBox ID="montoTextBox" CssClass="form-control input" runat="server" Text='<%# Bind("monto") %>' value='0'/></td>
                    <td><asp:RequiredFieldValidator CssClass="table-danger" ID="RequiredFieldValidatorMonto" runat="server" ErrorMessage="Debes ingresar un monto." ControlToValidate="montoTextBox"></asp:RequiredFieldValidator></td>
                </tr>
            </table>
 
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class ="table table-bordered">
                <tr>
                    <th class="etiqueta" style="width: 168px">#</th>
                    <td><asp:Label ID="idElementoLabel" runat="server" Text='<%# Eval("idElemento") %>' /></td>
                </tr>
                <tr>
                    <th class="etiqueta" style="width: 168px">Nombre:</th>
                    <td><asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' /></td>
                </tr>
                <tr>
                    <th class="etiqueta" style="width: 168px">Descripci&oacute;n</th>
                    <td><asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' /></td>
                </tr>
                <tr>
                    <th class="etiqueta" style="width: 168px">Monto</th>
                    <td><asp:Label ID="montoLabel" runat="server" Text='<%# Bind("monto") %>' /></td>
                </tr>
            </table>
       
            
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
        </ItemTemplate>
    </asp:FormView>

       </td>
       </table>
    <p>
    <br />
    </p>
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
    <asp:SqlDataSource ID="SqlDataSourceElementos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Elemento] WHERE [idElemento] = @idElemento" InsertCommand="INSERT INTO [Elemento] ([descripcion], [monto], [nombre]) VALUES (@descripcion, @monto, @nombre)" SelectCommand="SELECT * FROM [Elemento] WHERE ([idElemento] = @idElemento)" UpdateCommand="UPDATE [Elemento] SET [descripcion] = @descripcion, [monto] = @monto, [nombre] = @nombre WHERE [idElemento] = @idElemento">
        <DeleteParameters>
            <asp:Parameter Name="idElemento" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="monto" Type="Int32" />
            <asp:Parameter Name="nombre" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idElemento" QueryStringField="idElemento" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="monto" Type="Int32" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="idElemento" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <h3><asp:Label ID="LabelVerDetalles" runat="server" Text="Detalle gasto"></asp:Label></h3>
    <asp:Button CssClass="btn btn-primary" ID="ButtonConfirmar" runat="server" Text="Confirmar Detalle" />
    <asp:GridView ID="GridViewDetalle" CssClass="table table-bordered table-striped table-hover" runat="server" 
                 DataSourceID="SqlDataSourceDetalleGastos" Visible="False"
                  AutoGenerateColumns="False" HorizontalAlign="Center" ShowFooter="True" Width="367px" DataKeyNames="idDetalle">

                <Columns>
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                    <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                    <asp:BoundField DataField="total" HeaderText="total" ReadOnly="True" SortExpression="total" />
                   <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-sm btn-primary" > 
<ControlStyle CssClass="btn btn-sm btn-primary"></ControlStyle>
                    </asp:CommandField>
                </Columns>

            </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceDetalleGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT DetalleGasto.idDetalle, Elemento.nombre, DetalleGasto.Cantidad, Elemento.monto, DetalleGasto.Cantidad * Elemento.monto AS total FROM Elemento INNER JOIN DetalleGasto ON Elemento.idElemento = DetalleGasto.idElemento INNER JOIN Gasto ON DetalleGasto.idGasto = Gasto.idGasto INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria INNER JOIN Categoria ON Subcategoria.idCategoria = Categoria.idCategoria WHERE (DetalleGasto.idGasto = @idGasto)" DeleteCommand="DELETE FROM DetalleGasto WHERE (idDetalle = @idDetalle)">
        <DeleteParameters>
            <asp:Parameter Name="idDetalle" />
        </DeleteParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idGasto" QueryStringField="idGasto" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceUpdatearGasto" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT idGasto, monto, fecha, idUsuario, idSubcategoria FROM Gasto" UpdateCommand="UPDATE Gasto SET monto = @suma_total WHERE (idGasto = @idGasto)">
        <UpdateParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idGasto" QueryStringField="idGasto" />
            <asp:QueryStringParameter DefaultValue="0" Name="suma_total" QueryStringField="suma_total" />
            
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
            </div>
            </div>
    </div>
</asp:Content>

