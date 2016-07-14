<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <h1 style="text-align: center">Bienvenido&nbsp;<asp:Label ID="LabelUsuario" runat="server" Text="usuario"></asp:Label></h1>
    <h4 style="text-align: center">Hoy es: <asp:Label ID="LabelFechaHoy" runat="server" Text="Label"></asp:Label> </h4>
    <hr />
    <div class="row">
        <div class="col-lg-4">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <h4 class="panel-title" style="text-align: center">Ingresos <i class="fa fa-arrow-circle-o-up" aria-hidden="true"></i></h4>
                </div>
                <div class="panel-body">
                    <h4 class="panel-title" style="text-align: center">$ <asp:Label ID="LabelIngreso" runat="server" Text="Label" Font-Bold="True" Font-Italic="False"></asp:Label></h4>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title" style="text-align: center">Saldo actual</h4>
                </div>
                <div class="panel-body">
                    <h4 class="panel-title" style="text-align: center">$ <asp:Label ID="LabelSaldo" runat="server" Text="Label" Font-Bold="True"></asp:Label></h4>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-red">
                <div class="panel-heading">
                    <h4 class="panel-title" style="text-align: center">Gastos <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></h4>
                </div>
                <div class="panel-body">
                    <h4 class="panel-title" style="text-align: center">$ <asp:Label ID="LabelGastos" runat="server" Text="Label" Font-Bold="True"></asp:Label></h4>
                </div>
            </div>
        </div>
    </div>
    <hr />

    <div class="jumbotron">
        <div class="row">

            <div class="col-sm-4">
                
                <h3 style="text-align: center">Resumen</h3>
                <hr />
                <div class="list-group">
                    <a runat="server" href="#" class="list-group-item">
                        <h4 class="list-group-item-heading">Gastos</h4>
                        <p class="list-group-item-text">Has gastado mucho en 
                            <% Response.Write(Session("mayorCategoria"))%>.</p>

                    </a>
                </div>
            </div>

            <div class="col-sm-4">
                <h3 style="text-align: center">Controla tu presuspuesto</h3>
                <br />
                <div style="text-align: center">
                    <a runat="server" href="~/Transacciones">
                        <button type="button" class="btn btn-lg btn-primary" style="margin: 20px; width: 250px;">Ver transacciones</button>
                    </a>
                </div>
                <div style="text-align: center">
                    <a runat="server" href="~/InformeCategorias">
                        <button type="button" class="btn btn-lg btn-warning" style="margin: 20px; width: 250px;">Gastos por categoria</button>
                        </a>
                </div>
                <div style="text-align: center">
                    <a runat="server" href="~/Ahorro/gestionAhorros">
                        <button type="button" class="btn btn-lg btn-success" style="margin: 20px; width: 250px;">Ahorros</button>
                    </a>
                </div>
                    
            </div>

            <div class="col-sm-4" style="text-align: center">
                <h3 style="text-align: center">Ingresos</h3>
                    <asp:Chart ID="ChartIngresos" runat="server" DataSourceID="SqlDataSourceIngresos">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Doughnut" XValueMember="descripcion" YValueMembers="cantidad"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
  
                
            </div>
        </div>

    </div>


    <asp:GridView ID="GridViewIngresos" runat="server" AutoGenerateColumns="False" DataKeyNames="idIngreso" DataSourceID="SqlDataSourceIngresos" ShowFooter="True">
        <Columns>
            <asp:BoundField DataField="idIngreso" HeaderText="idIngreso" InsertVisible="False" ReadOnly="True" SortExpression="idIngreso" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
            <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
            <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceIngresos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Ingreso]"></asp:SqlDataSource>


    <asp:GridView ID="GridViewGastos" runat="server" AutoGenerateColumns="False" DataKeyNames="idGasto" DataSourceID="SqlDataSourceGastos" ShowFooter="True">
        <Columns>
            <asp:BoundField DataField="idGasto" HeaderText="idGasto" InsertVisible="False" ReadOnly="True" SortExpression="idGasto" />
            <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
            <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" />
            <asp:BoundField DataField="idSubcategoria" HeaderText="idSubcategoria" SortExpression="idSubcategoria" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT Gasto.idGasto, Gasto.monto, Gasto.fecha, Gasto.idUsuario, Gasto.idSubcategoria, Categoria.nombre FROM Gasto INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria INNER JOIN Categoria ON Subcategoria.idCategoria = Categoria.idCategoria"></asp:SqlDataSource>
</asp:Content>
