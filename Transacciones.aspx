<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Transacciones.aspx.vb" Inherits="Informes_Transacciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link rel="stylesheet" href="Content/datepicker.css">
    <script src="Scripts/bootstrap-datepicker.js"></script>
    <h1 style="text-align: center">
        <asp:Label ID="LabelTitulo" runat="server" Text="Transacciones"></asp:Label></h1>

    <div class="row">
        <div class="col-lg-12">
            <h3><asp:Label ID="LabelFechas" runat="server" Text="Ingresa el rango de fechas"></asp:Label></h3>
            
            <table class="table">
                <tr>
                    <th style="width: 113px">
                        <asp:Label ID="LabelFormFecha1" runat="server" Text="Desde"></asp:Label></th>
                    <td class="datepicker-inline">
                        <asp:Calendar ID="CalendarDesde" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="250px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                        <!--input  type="text" placeholder="Haz click aqui para seleccionar fecha..."  id="fecha" name="fecha"-->
                    </td>
                    <th style="width: 113px">
                        <asp:Label ID="LabelFormFecha2" runat="server" Text="Hasta"></asp:Label></th>
                    <td class="datepicker-inline">
                        <!--input  type="text" placeholder="Haz click aqui para seleccionar fecha..."  id="fecha2" name="fecha"-->
                        <asp:Calendar ID="CalendarHasta" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="250px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center"><asp:LinkButton ID="BotonInforme" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Edit" Text="Aceptar" /></td> 
                </tr>
            </table>


        </div>
    </div>

    <div class="row">

        <div class="col-lg-6">
            <h4 style="text-align: center">
                <asp:Label ID="LabelIngresos" runat="server" Text="Ingresos del periodo" Visible="False"></asp:Label></h4>
           
            
             <asp:GridView ID="GridViewIngresos" runat="server" CellPadding="4" DataKeyNames="idIngreso" 
                 DataSourceID="SqlDataSourceIngresos" ForeColor="#333333" GridLines="None" Visible="False"
                  AutoGenerateColumns="False" HorizontalAlign="Center" ShowFooter="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                 <Columns>
                     <asp:BoundField DataField="descripcion" HeaderText="Descripcion" SortExpression="descripcion" />
                     <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                     <asp:BoundField DataField="nombre" HeaderText="Responsable" SortExpression="nombre" />
                     <asp:BoundField DataField="cantidad" HeaderText="Monto" SortExpression="cantidad" />
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
            
            
            <asp:SqlDataSource ID="SqlDataSourceIngresos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT Ingreso.idIngreso, Ingreso.descripcion, Ingreso.fecha, Ingreso.cantidad, Ingreso.idUsuario, Usuario.nombre FROM Ingreso INNER JOIN Usuario ON Ingreso.idUsuario = Usuario.idUsuario WHERE (Ingreso.fecha &gt;= @fecha) AND (Ingreso.fecha &lt;= @fecha2)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="CalendarDesde" DbType="Date" DefaultValue="01/01/2000" Name="fecha" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="CalendarHasta" DbType="Date" DefaultValue="31/12/2040" Name="fecha2" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>




        <div class="col-lg-6">
            <h4 style="text-align: center">
                <asp:Label ID="LabelGastos" runat="server" Text="Gastos del periodo" Visible="False"></asp:Label></h4>
           
            
             <asp:GridView ID="GridViewGastos" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idGasto" DataSourceID="SqlDataSourceGastos" ForeColor="#333333" GridLines="None" Visible="False" HorizontalAlign="Center" ShowFooter="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Expr1" HeaderText="Categoria" SortExpression="Expr1" />
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                    <asp:BoundField DataField="nombre" HeaderText="Responsable" SortExpression="nombre" />
                    <asp:BoundField DataField="monto" HeaderText="Monto" SortExpression="monto" />
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


            <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT Gasto.idGasto, Gasto.monto, Gasto.fecha, Gasto.idUsuario, Gasto.idSubcategoria, Usuario.nombre, Subcategoria.nombre AS Expr1 FROM Gasto INNER JOIN Usuario ON Gasto.idUsuario = Usuario.idUsuario INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria WHERE (Gasto.fecha &gt;= @fecha) AND (Gasto.fecha &lt;= @fecha2)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="CalendarDesde" DbType="Date" DefaultValue="01/01/2000" Name="fecha" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="CalendarHasta" DbType="Date" DefaultValue="31/12/2040" Name="fecha2" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </div>


    </div>

    <div class="row">
        <asp:Label ID="LabelPresupuesto" runat="server" Visible="False"></asp:Label>
    </div>



    


    <script type="text/javascript">
        $(document).ready(function () {
            $('#fecha').datepicker({
                format: "yyyy/mm/dd"
            });
            $('#fecha2').datepicker({
                format: "yyyy/mm/dd"
            });
        });
    </script>
</asp:Content>
