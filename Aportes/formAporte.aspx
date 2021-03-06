﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formAporte.aspx.vb" Inherits="Aportes_formAporte" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

      <h2>Formulario de aporte de dinero</h2>
    <h3>
        <asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>
      <p>
          &nbsp;</p>

    <asp:FormView ID="FormViewAportes" runat="server" DataKeyNames="idAporte" DataSourceID="SqlDataSourceAportes" Width="652px">
        <EditItemTemplate>

            <table class="table table-bordered">
                <tr>
                    <th class="etiqueta">Aporte #: </th>
                    <td><asp:Label ID="idAporteLabel1" CssClass="form-control" runat="server" Text='<%# Eval("idAporte") %>' /> </td>
                    <td class="error">&nbsp;</td>
                </tr>
                <tr>
                    <th class="etiqueta">Monto: </th>
                    <td><asp:TextBox ID="montoTextBox" CssClass="form-control" runat="server" Text='<%# Bind("monto") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMonto" runat="server" ControlToValidate="montoTextBox" ErrorMessage="Debes ingresar un monto."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th class="etiqueta">Fecha: </th>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="206px"  SelectedDate='<%# Bind("Fecha") %>'>
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
                    <th class="etiqueta">Usuario: </th>
                    <td>
                        <asp:DropDownList ID="DropDownListUsuarios" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario" SelectedValue='<%# Bind("IdUsuario") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
                    </td>
                    <td class="error"></td>
                </tr>
            </table>

            <br />


            <asp:LinkButton CssClass="btn btn-primary"  ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"/>
            &nbsp;<asp:LinkButton CssClass="btn btn-default" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />

        </EditItemTemplate>
        <InsertItemTemplate>

            <table class="table table-bordered">
                <tr>
                    <th class="etiqueta">Monto: </th>
                    <td><asp:TextBox ID="montoTextBox" CssClass="form-control" runat="server" Text='<%# Bind("monto") %>' /></td>
                    <td class="error">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMonto" runat="server" ControlToValidate="montoTextBox" ErrorMessage="Debes ingresar un monto."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th class="etiqueta">Fecha: </th>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="206px"  SelectedDate='<%# Bind("Fecha") %>'>
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
                    <th class="etiqueta">Usuario: </th>
                    <td>
                        <asp:DropDownList ID="DropDownListUsuarios" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="nombre" DataValueField="idUsuario" SelectedValue='<%# Bind("IdUsuario") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
                    </td>
                    <td class="error"></td>
                </tr>
            </table>

            <br />


            <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click"/>
        </InsertItemTemplate>


        <ItemTemplate>
            <table class="table table-bordered table-striped">
           
                <tr>
                    <th class="etiqueta">Monto: </th>
                    <td><asp:Label ID="montoTextBox" runat="server" Text='<%# Bind("monto") %>'  /></td>
            
                </tr>
                <tr>
                    <th class="etiqueta">Fecha: </th>
                    <td>
                       <asp:Label ID="TextBox1" runat="server" Text='<%# Bind("fecha")%>' />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th class="etiqueta">Usuario: </th>
                    <td><asp:Label ID="TextBox2" runat="server" Text='<%# Bind("nombre") %>' /></td>
                </tr>
            </table>

            <br />
            <asp:LinkButton ID="EditButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
&nbsp;<asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="LinkButtonVolver" CssClass="btn btn-default" runat="server" OnClick="LinkButtonVolver_Click">Volver</asp:LinkButton>
        </ItemTemplate>
      </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceAportes" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [Aporte] WHERE [idAporte] = @idAporte" InsertCommand="INSERT INTO [Aporte] ([monto], [fecha], [IdUsuario]) VALUES (@monto, @fecha, @IdUsuario)" SelectCommand="SELECT Aporte.idAporte, Aporte.monto, Aporte.fecha, Aporte.IdUsuario, Usuario.nombre FROM Aporte INNER JOIN Usuario ON Aporte.IdUsuario = Usuario.idUsuario WHERE (Aporte.idAporte = @idAporte)" UpdateCommand="UPDATE [Aporte] SET [monto] = @monto, [fecha] = @fecha, [IdUsuario] = @IdUsuario WHERE [idAporte] = @idAporte">
        <DeleteParameters>
            <asp:Parameter Name="idAporte" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="IdUsuario" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="idAporte" QueryStringField="idAporte" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="monto" Type="Int32" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="IdUsuario" Type="Int32" />
            <asp:Parameter Name="idAporte" Type="Int32" />
        </UpdateParameters>
      </asp:SqlDataSource>

</asp:Content>

