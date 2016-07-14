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
                    <h4 class="panel-title" style="text-align: center">$ <asp:Label ID="LabelIngreso" runat="server" Text="Label"></asp:Label></h4>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title" style="text-align: center">Saldo actual</h4>
                </div>
                <div class="panel-body">
                    <h4 class="panel-title" style="text-align: center">$ <asp:Label ID="LabelSaldo" runat="server" Text="Label"></asp:Label></h4>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-red">
                <div class="panel-heading">
                    <h4 class="panel-title" style="text-align: center">Gastos <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></h4>
                </div>
                <div class="panel-body">
                    <h4 class="panel-title" style="text-align: center">$ <asp:Label ID="LabelGastos" runat="server" Text="Label"></asp:Label></h4>
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
                    <a runat="server" href="~/Gastos/gestionGastos" class="list-group-item">
                        <h4 class="list-group-item-heading">Gastos</h4>
                        <p class="list-group-item-text">Has gastado mucho en x categoria.</p>

                    </a>
                    <a runat="server" href="~/Aportes/gestionAportes" class="list-group-item">
                        <h4 class="list-group-item-heading">Aportes</h4>
                        <p class="list-group-item-text">Matias ha sido quien más ha aportado al hogar. </p>

                    </a>
                    <a runat="server" href="~/Ahorro/gestionAhorros" class="list-group-item">
                        <h4 class="list-group-item-heading">Ahorros</h4>
                        <p class="list-group-item-text">Tienes $50.000 en tu cuenta de ahorros.</p>
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
                    <a runat="server" href="~/Gastos/gestionGastos">
                        <button type="button" class="btn btn-lg btn-warning" style="margin: 20px; width: 250px;">Gastos</button>
                        </a>
                </div>
                <div style="text-align: center">
                    <a runat="server" href="~/Ahorro/gestionAhorros">
                        <button type="button" class="btn btn-lg btn-success" style="margin: 20px; width: 250px;">Ahorros</button>
                    </a>
                </div>
                    
            </div>

            <div class="col-sm-4">
                <h3 style="text-align: center">Gastos</h3>
                <hr />
                <asp:Chart ID="ChartHome" runat="server" DataSourceID="SqlDataSourceGraficos" BackColor="Transparent" BackImageAlignment="Center" Palette="Bright" BorderlineColor="Transparent" CssClass="text-center">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Pie" XValueMember="idSubcategoria" YValueMembers="monto"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSourceGraficos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Gasto]"></asp:SqlDataSource>
            </div>
        </div>

    </div>




</asp:Content>
