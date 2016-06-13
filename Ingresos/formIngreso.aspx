<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formIngreso.aspx.vb" Inherits="Ingresos_formIngreso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="text-align: center">Formulario de ingresos de dinero</h2>
    <h3 style="text-align: center"><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>

    <asp:FormView ID="FormViewIngresos" runat="server" DataKeyNames="idIngreso" DataSourceID="SqlDataSourceIngresos" Width="688px">
        <EditItemTemplate>
            <table>
                <tr>
                    <td style="height: 24px; "><strong>Descripción</strong>:</td>
                    <td style="height: 24px"> <asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' Height="28px" Width="219px" /></td>
                    <td style="height: 24px"> <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" ControlToValidate="descripcionTextBox" ErrorMessage="Debes ingresar una descripción."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td> <strong>Fecha:</strong></td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="106px" NextPrevFormat="FullMonth" SelectedDate='<%# Bind("fecha") %>' Width="230px">
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
                    <td> <strong>Cantidad:</strong></td>
                    <td><asp:TextBox ID="cantidadTextBox" runat="server" Text='<%# Bind("cantidad") %>' Height="28px" Width="223px" /></td>
                    <td>            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCantidad" runat="server" ControlToValidate="cantidadTextBox" ErrorMessage="Debes ingresar un monto."></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td><strong>Usuario</strong>:</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario" Height="28px" SelectedValue='<%# Bind("idUsuario") %>' Width="227px">
            </asp:DropDownList></td>
                </tr>
            </table>
 
            <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString2 %>" 
                SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
            <br />

            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True"
                 CommandName="Update" Text="Actualizar" />

            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Cancelar"  />

        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <tr>
                    <td><strong>Descripción</strong>:</td>
                    <td><asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' Height="28px" Width="217px" /></td>
                    <td style="width: 346px"><asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" ControlToValidate="descripcionTextBox" ErrorMessage="Debes ingresar una descripción."></asp:RequiredFieldValidator>
            </td>
                </tr>
                <tr>
                    <td><strong>Fecha:</strong></td>
                    <td>
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="28px" NextPrevFormat="FullMonth" SelectedDate='<%# Bind("fecha") %>' Width="221px">
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
                    <td><strong>Cantidad:</strong></td>
                    <td><asp:TextBox ID="cantidadTextBox" runat="server" Text='<%# Bind("cantidad") %>' Height="28px" Width="226px" /></td>
                    <td style="width: 346px"><asp:RequiredFieldValidator ID="RequiredFieldValidatorCantidad" runat="server" ControlToValidate="cantidadTextBox" ErrorMessage="Debes ingresar una cantidad de dinero."></asp:RequiredFieldValidator>
            </td>
                </tr>
                <tr>
                    <td>  <strong>Usuario</strong>:</td>
                    <td><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario" SelectedValue='<%# Bind("idUsuario") %>' Height="28px"></asp:DropDownList></td>
                </tr>
            </table>
            
  

            <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString2 %>" SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td style="height: 22px; width: 103px"><strong>Ingreso</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td style="height: 22px"> <asp:Label ID="idIngresoLabel" runat="server" Text='<%# Eval("idIngreso") %>' /></td>               
                </tr>
                <tr>
                    <td style="width: 103px"> <strong>Descripción</strong>:</td>
                    <td> <asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' /></td>               
                </tr>
                <tr>
                    <td style="width: 103px"> <strong>Fecha</strong>:</td>
                    <td> <asp:Label ID="fechaLabel" runat="server" Text='<%# Bind("fecha") %>' /></td>               
                </tr>
                <tr>
                    <td style="width: 103px"> <strong>Cantidad</strong>:</td>
                    <td><asp:Label ID="cantidadLabel" runat="server" Text='<%# Bind("cantidad") %>' /></td>               
                </tr>
                <tr>
                    <td style="width: 103px"> <strong>Usuario</strong>:</td>
                    <td> <asp:Label ID="idUsuarioLabel" runat="server" Text='<%# Bind("idUsuario") %>' /></td>               
                </tr>
            </table>
   
           
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            <asp:LinkButton ID="LinkButtonVolver" runat="server" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>

            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceIngresos" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString2 %>" 
        InsertCommand="INSERT INTO [Ingreso] ([descripcion], [fecha], [cantidad], [idUsuario]) VALUES (@descripcion, @fecha, @cantidad, @idUsuario)" 
        SelectCommand="SELECT [idIngreso], [descripcion], [fecha], [cantidad], [idUsuario] FROM [Ingreso] WHERE ([idIngreso] = @idIngreso)" 
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

