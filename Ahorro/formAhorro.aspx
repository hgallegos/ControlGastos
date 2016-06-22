<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formAhorro.aspx.vb" Inherits="Ahorro_formAhorro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>Formulario de ahorro de dinero</h2>
    <h3>
        <asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>
    <asp:FormView ID="FormViewAhorro" runat="server" DataKeyNames="idAhorro" DataSourceID="SqlDataSourceAhorros" Width="554px">
        <EditItemTemplate>


            <table class="tabla_formulario">
                <tr>
                    <td class="etiqueta" style="width: 80px">Monto:</td>
                    <td style="width: 250px" ><asp:TextBox ID="MontoTextBox" runat="server" Text='<%# Bind("Monto") %>' />   
                    </td>
                    <td ><asp:RequiredFieldValidator ID="RequiredFieldValidatorMonto" runat="server" ControlToValidate="MontoTextBox" ErrorMessage="Debes ingresar un monto."></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="etiqueta" style="width: 80px">Fecha:</td>
                    <td style="width: 250px"> 
                        <asp:Calendar ID="Calendar1" runat="server" Height="190px" Width="212px" SelectedDate='<%# Bind("Fecha") %>' BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
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
                    <td class="etiqueta" style="width: 80px">Usuario</td>
                    <td style="width: 250px">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario" SelectedValue='<%# Bind("idUsuario") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>


            &nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>



            <h4>Nuevo ahorro</h4>
            <br />




            <table class="tabla_formulario">
                <tr>
                    <td class="etiqueta" style="width: 67px">Monto:</td>
                    <td style="width: 246px"><asp:TextBox ID="MontoTextBox" runat="server" Text='<%# Bind("Monto") %>' Height="16px" Width="203px" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMonto" runat="server" ErrorMessage="Debes ingresar un monto." ControlToValidate="MontoTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="etiqueta" style="width: 67px">Fecha:</td>
                    <td style="width: 246px">
                        <asp:Calendar ID="Calendar2" runat="server" Height="190px" SelectedDate='<%# Bind("Fecha") %>' BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth" Width="226px">
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
                    <td class="etiqueta" style="width: 67px">Usuario: </td>
                    <td style="width: 246px"><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario" SelectedValue='<%# Bind("idUsuario") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
            </td>
                </tr>
            </table>


            <br />
            &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
        </InsertItemTemplate>
        <ItemTemplate>


            <table class='tabla_formulario'>
                <tr>
                    <td class='etiqueta'>Ahorro   #</td>
                    <td>
                        <asp:Label ID="idAhorroLabel" runat="server" Text='<%# Eval("idAhorro") %>' /></td>
                </tr>
                <tr>
                    <td class='etiqueta'>Monto: </td>
                    <td>
                        <asp:Label ID="MontoLabel" runat="server" Text='<%# Bind("Monto") %>' /></td>
                </tr>
                <tr>
                    <td class='etiqueta'>Fecha: </td>
                    <td>
                        <asp:Label ID="FechaLabel" runat="server" Text='<%# Bind("Fecha") %>' /></td>
                </tr>
                <tr>
                    <td class='etiqueta'>Usuario: </td>
                    <td>
                        <asp:Label ID="idUsuarioLabel" runat="server" Text='<%# Bind("idUsuario") %>' /></td>
                </tr>
            </table>


            &nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="LinkButtonVolver" runat="server" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>
        </ItemTemplate>
        <RowStyle BorderColor="White" BorderStyle="Dotted" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceAhorros" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Ahorro] WHERE [idAhorro] = @idAhorro" InsertCommand="INSERT INTO [Ahorro] ([Monto], [Fecha], [idUsuario]) VALUES (@Monto, @Fecha, @idUsuario)" SelectCommand="SELECT * FROM [Ahorro] WHERE ([idAhorro] = @idAhorro)" UpdateCommand="UPDATE [Ahorro] SET [Monto] = @Monto, [Fecha] = @Fecha, [idUsuario] = @idUsuario WHERE [idAhorro] = @idAhorro">
        <DeleteParameters>
            <asp:Parameter Name="idAhorro" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Fecha" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idAhorro" QueryStringField="idAhorro" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Fecha" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
            <asp:Parameter Name="idAhorro" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

