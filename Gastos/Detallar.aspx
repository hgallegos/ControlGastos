<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Detallar.aspx.vb" Inherits="Gastos_Detallar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <h3>Detallar Gasto</h3>

 
    <asp:Label ID="labelPreguntaDetalle" runat="server" Text='¿Desea detallar el gasto?' />
    
    
     <br />
    
    
   <asp:Button ID="ButtonDetallar" runat="server" Text="Si" Width="66px" />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="ButtonNoDetallar" runat="server" Text="No" Width="66px" />
       
 
    
       
 
     <br />
     <asp:ListBox ID="ListBoxElementos" runat="server" DataSourceID="SqlDataSourceElementos" DataTextField="nombre" DataValueField="idElemento" Visible="False" Width="315px"></asp:ListBox>
     <br />
     <br />
     <asp:SqlDataSource ID="SqlDataSourceElementos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT * FROM [Elemento] ORDER BY [nombre]"></asp:SqlDataSource>
       
 
    
       
 
</asp:Content>

