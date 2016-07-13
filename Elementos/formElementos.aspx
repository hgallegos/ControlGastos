<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="formElementos.aspx.vb" Inherits="Elementos_formElementos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Formulario de Elementos</h2>
    <h3><asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>
    <asp:FormView ID="FormViewElementos" runat="server" DataKeyNames="idElemento" DataSourceID="SqlDataSourceElementos">
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
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="UpdateCancelButton_Click" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class ="table table-bordered">
                <tr>
                    <th class="etiqueta">Nombre:</th>
                    <td><asp:TextBox ID="nombreTextBox" CssClass="form-control input" runat="server" Text='<%# Bind("nombre") %>' /></td>
                    <td><asp:RequiredFieldValidator CssClass="table-danger" ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Debes ingresar un nombre." ControlToValidate="nombreTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Descripci&oacute;n:</th>
                    <td><asp:TextBox ID="descripcionTextBox" CssClass="form-control input" runat="server" Text='<%# Bind("descripcion")%>'></asp:TextBox></td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" CssClass="table-danger" runat="server" ErrorMessage="Debes ingresar una descripci&oacute;n" ControlToValidate="descripcionTextbox"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <th class="etiqueta">Monto:</th>
                    <td><asp:TextBox ID="montoTextBox" CssClass="form-control input" runat="server" Text='<%# Bind("monto") %>' /></td>
                    <td><asp:RequiredFieldValidator CssClass="table-danger" ID="RequiredFieldValidatorMonto" runat="server" ErrorMessage="Debes ingresar un monto." ControlToValidate="montoTextBox"></asp:RequiredFieldValidator></td>
                </tr>
            </table>
 
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" OnClick="InsertCancelButton_Click" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class ="table table-bordered table-striped">
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
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="LinkButtonVolver" runat="server" CausesValidation="False" Text="Volver" OnClick="LinkButtonVolver_Click" />
        </ItemTemplate>
    </asp:FormView>
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
</asp:Content>

