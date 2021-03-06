﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="FormGastos.aspx.vb" Inherits="FormGastos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h2 >Nuevo Gasto</h2>
    

    <asp:Label ID="labelGasto" runat="server" Text=' ' />
    &nbsp;
    <asp:FormView ID="FormViewGastos" runat="server" DataKeyNames="idGasto" DataSourceID="SqlDataSourceGastos" Width="674px" DefaultMode="Insert">
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
                    <th class="etiqueta" style="width: 80px">Monto:</th>
                    <td style="width: 250px"><asp:TextBox style="width: 250px" ID="montoTextBox" CssClass="form-control" runat="server" Text='<%# Bind("monto") %>' /></td>
                    <td class="error" ><asp:RequiredFieldValidator ID="RequiredFieldValidatorMonto" runat="server" ControlToValidate="MontoTextBox" ErrorMessage="Debes ingresar un monto."></asp:RequiredFieldValidator></td>

                </tr>
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
            
            
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertButton" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar"  />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-defualt" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
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
            <asp:LinkButton ID="EditButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
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
    <br />
    <br />
    <br />
    <br />
</asp:Content>

