<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Inicio.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Bienvenidos a Home Spends </h1>
        <table class="tabla_portada">
            <tr>
                <td>
                    <img src="Imagenes/home.jpg" style=" height: 150px"/>
                </td>
                <td>
                    <p class="lead">Home Spends es la herramienta perfecta para todos los que quieran controlar 
                        el presupuesto del hogar. Desde ahora, podrás manejar tus ingresos, gastos y ahorros
                        para comprobar el saldo actual de tus cuentas, acceder a informes. Ahorrar el dinero se 
                        hará más sencillo y cómodo con Home Spends.
                    </p>
                </td>
            </tr>
        </table>

        <br />

        <p><a href="#" class="btn btn-primary btn-lg">Entrar &raquo;</a></p>
    </div>




</asp:Content>
