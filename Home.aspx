<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <h1 style="text-align: center">Bienvenido&nbsp; </h1>
    <h4 style="text-align: center">Hoy es <asp:Label ID="LabelFechaHoy" runat="server" Text="Label"></asp:Label></h4>
    <hr />
    <div class="row">
        <div class="col-lg-4">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <h4 class="panel-title">Ingresos</h4>
                </div>
                <div class="panel-body">
                    <p>$</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title">Saldo actual</h4>
                </div>
                <div class="panel-body">
                    <p>$</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-red">
                <div class="panel-heading">
                    <h4 class="panel-title">Gastos</h4>
                </div>
                <div class="panel-body">
                    <p>$</p>
                </div>
            </div>
        </div>
    </div>
    

    <div class="jumbotron">
        
   
    </div>




</asp:Content>
