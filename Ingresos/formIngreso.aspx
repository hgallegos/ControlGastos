<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formIngreso.aspx.vb" Inherits="Ingresos_formIngreso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Formulario de ingresos de dinero</h2>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:FormView ID="FormViewIngresos" runat="server" DataKeyNames="idIngreso" DataSourceID="SqlDataSourceIngresos" Width="688px">
        <EditItemTemplate>
            <table class="tabla_formulario">
                <tr>
                    <td class="etiqueta">Descripción:</td>
                    <td > <asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' Height="28px" Width="219px" /></td>
                    <td class="error"> <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" ControlToValidate="descripcionTextBox" ErrorMessage="Debes ingresar una descripción."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="etiqueta">Fecha:</td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" SelectedDate='<%# Bind("fecha") %>' Width="211px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="etiqueta"> Monto:</td>
                    <td><asp:TextBox ID="cantidadTextBox" runat="server" Text='<%# Bind("cantidad") %>' Height="28px" Width="223px" /></td>
                    <td class="error"> <asp:RequiredFieldValidator ID="RequiredFieldValidatorCantidad" runat="server" ControlToValidate="cantidadTextBox" ErrorMessage="Debes ingresar un monto."></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="etiqueta">Usuario:</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario" Height="28px" SelectedValue='<%# Bind("idUsuario") %>' Width="227px">
            </asp:DropDownList></td>
                </tr>
            </table>
 
            <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" 
                SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
            <br />

            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True"
                 CommandName="Update" Text="Actualizar" />

            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />

        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="tabla_formulario">
                <tr>
                    <td class="etiqueta"><strong>Descripción</strong>:</td>
                    <td><asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' Height="28px" Width="217px" /></td>
                    <td style="width: 346px" class="error"><asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" ControlToValidate="descripcionTextBox" ErrorMessage="Debes ingresar una descripción."></asp:RequiredFieldValidator>
            </td>
                </tr>
                <tr>
                    <td class="etiqueta"><strong>Fecha:</strong></td>
                    <td>
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" SelectedDate='<%# Bind("fecha") %>' Width="231px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                    <td style="width: 346px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="etiqueta"><strong>Monto:</strong></td>
                    <td><asp:TextBox ID="cantidadTextBox" runat="server" Text='<%# Bind("cantidad") %>' Height="28px" Width="226px" /></td>
                    <td style="width: 346px" class="error"><asp:RequiredFieldValidator ID="RequiredFieldValidatorCantidad" runat="server" ControlToValidate="cantidadTextBox" ErrorMessage="Debes ingresar una cantidad de dinero."></asp:RequiredFieldValidator>
            </td>
                </tr>
                <tr>
                    <td class="etiqueta">  <strong>Usuario</strong>:</td>
                    <td><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario" SelectedValue='<%# Bind("idUsuario") %>' Height="28px"></asp:DropDownList></td>
                </tr>
            </table>
            
  

            <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="tabla_formulario">
                <tr>
                    <td class="etiqueta">Ingreso #</td>
                    <td > <asp:Label ID="idIngresoLabel" runat="server" Text='<%# Eval("idIngreso") %>' /></td>               
                </tr>
                <tr>
                    <td class="etiqueta"> <strong>Descripción</strong>:</td>
                    <td> <asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' /></td>               
                </tr>
                <tr>
                    <td class="etiqueta"> <strong>Fecha</strong>:</td>
                    <td> <asp:Label ID="fechaLabel" runat="server" Text='<%# Bind("fecha") %>' /></td>               
                </tr>
                <tr>
                    <td class="etiqueta"> <strong>Monto</strong>:</td>
                    <td><asp:Label ID="cantidadLabel" runat="server" Text='<%# Bind("cantidad") %>' /></td>               
                </tr>
                <tr>
                    <td class="etiqueta"> <strong>Usuario</strong>:</td>
                    <td> <asp:Label ID="idUsuarioLabel" runat="server" Text='<%# Bind("nombre") %>' /></td>               
                </tr>
            </table>
   
           
            <br />
   
           
            &nbsp;&nbsp;
   
           
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="LinkButtonVolver" runat="server" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>

            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceIngresos" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" 
        InsertCommand="INSERT INTO [Ingreso] ([descripcion], [fecha], [cantidad], [idUsuario]) VALUES (@descripcion, @fecha, @cantidad, @idUsuario)" 
        SelectCommand="SELECT Ingreso.idIngreso, Ingreso.descripcion, Ingreso.fecha, Ingreso.cantidad, Ingreso.idUsuario, Usuario.nombre FROM Ingreso INNER JOIN Usuario ON Ingreso.idUsuario = Usuario.idUsuario WHERE (Ingreso.idIngreso = @idIngreso)" 
        DeleteCommand="DELETE FROM [Ingreso] WHERE [idIngreso] = @idIngreso" 
        UpdateCommand="UPDATE [Ingreso] SET [descripcion] = @descripcion, [fecha] = @fecha, [cantidad] = @cantidad, [idUsuario] = @idUsuario WHERE [idIngreso] = @idIngreso">
        <DeleteParameters>
            <asp:Parameter Name="idIngreso" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="fecha" DbType="Date" />
            <asp:Parameter Name="cantidad" Type="Int32" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idIngreso" QueryStringField="idIngreso" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="cantidad" Type="Int32" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
            <asp:Parameter Name="idIngreso" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

