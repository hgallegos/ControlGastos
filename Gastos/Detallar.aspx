<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Detallar.aspx.vb" Inherits="Gastos_Detallar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <h3>Detallar Gasto</h3>

 
    <asp:Label ID="labelPreguntaDetalle" runat="server" Text='¿Desea detallar el gasto?' />
    
    
     <br />
    
    
   <asp:Button ID="ButtonDetallar" runat="server" Text="Si" Width="66px" />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="ButtonNoDetallar" runat="server" Text="No" Width="66px" />
       
 
    
       
 
  
    <h3>Gasto</h3>
       
 
    
       
 
     <asp:DetailsView ID="DetailsViewGastos" runat="server" AutoGenerateRows="False" DataKeyNames="idGasto" DataSourceID="SqlDataSourceGastos" Height="50px" Width="244px">
         <Fields>
             <asp:BoundField DataField="idGasto" HeaderText="idGasto" InsertVisible="False" ReadOnly="True" SortExpression="idGasto" />
             <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
             <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
             <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" />
             <asp:BoundField DataField="idSubcategoria" HeaderText="idSubcategoria" SortExpression="idSubcategoria" />
         </Fields>
     </asp:DetailsView>
     <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT idGasto, monto, fecha, idUsuario, idSubcategoria FROM Gasto WHERE (idGasto = (SELECT MAX(idGasto) AS Expr1 FROM Gasto AS Gasto_1))"></asp:SqlDataSource>
       
 
    
       
 
     <br />
     <br />
     <h3>Elementos del Gasto</h3>
     <p>&nbsp;</p>
     
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id Gasto" DataSourceID="SqlDataSourceDetalleGastos" Width="608px">
         <Columns>
             <asp:BoundField DataField="Id Gasto" HeaderText="Id Gasto" SortExpression="Id Gasto" InsertVisible="False" ReadOnly="True" />
             <asp:BoundField DataField="Elemento" HeaderText="Elemento" SortExpression="Elemento" />
             <asp:BoundField DataField="Subcategoria" HeaderText="Subcategoria" SortExpression="Subcategoria" />
             <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
             <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
             <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSourceDetalleGastos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="SELECT Gasto.idGasto AS [Id Gasto], Elemento.nombre AS Elemento, Subcategoria.nombre AS Subcategoria, Categoria.nombre AS Categoria, DetalleGasto.Cantidad, Elemento.monto AS Precio FROM DetalleGasto INNER JOIN Elemento ON DetalleGasto.idElemento = Elemento.idElemento INNER JOIN Gasto ON DetalleGasto.idGasto = Gasto.idGasto INNER JOIN Subcategoria ON Gasto.idSubcategoria = Subcategoria.idSubcategoria INNER JOIN Categoria ON Subcategoria.idCategoria = Categoria.idCategoria WHERE (DetalleGasto.idGasto = @idGasto)" InsertCommand="INSERT INTO DetalleGasto (idGasto, idElemento,Cantidad) VALUES (@idGasto, @idElemento,@Cantidad); INSERT INTO Elemento(descripcion,monto,nombre) VALUES(@descripcion, @monto,@nombre);">
         <InsertParameters>
             <asp:Parameter Name="idGasto" />
             <asp:Parameter Name="idElemento" />
             <asp:Parameter Name="Cantidad" />
             <asp:Parameter Name="descripcion" />
             <asp:Parameter Name="monto" />
             <asp:Parameter Name="nombre" />
         </InsertParameters>
         <SelectParameters>
             <asp:ControlParameter ControlID="DetailsViewGastos" Name="idGasto" PropertyName="SelectedValue" />
         </SelectParameters>
     </asp:SqlDataSource>
     <br />
            
    <h3>Nuevo Elemento al detalle
     </h3>
     <asp:DetailsView ID="DetailsViewNuevoDetalle" runat="server" DataSourceID="SqlDataSourceNuevoDetalle" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="idDetalle" DefaultMode="Insert">
         <Fields>
             <asp:BoundField DataField="idDetalle" HeaderText="idDetalle" InsertVisible="False" ReadOnly="True" SortExpression="idDetalle" />
             <asp:BoundField DataField="idGasto" HeaderText="idGasto" SortExpression="idGasto" />
             <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
             <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
             
             <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" ></asp:BoundField>
             <asp:CommandField ShowInsertButton="True" />
         </Fields>
        </asp:DetailsView>
    
       
 
     <br />
    
       
 
     <asp:SqlDataSource ID="SqlDataSourceNuevoDetalle" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" DeleteCommand="DELETE FROM [DetalleGasto] WHERE [idDetalle] = @idDetalle" InsertCommand="INSERT INTO [DetalleGasto] ([idGasto], [idElemento], [Cantidad]) VALUES (@idGasto, @idElemento, @Cantidad)" SelectCommand="SELECT DetalleGasto.idDetalle, DetalleGasto.idGasto, DetalleGasto.Cantidad, Elemento.nombre, Elemento.monto FROM DetalleGasto INNER JOIN Elemento ON DetalleGasto.idElemento = Elemento.idElemento" UpdateCommand="UPDATE [DetalleGasto] SET [idGasto] = @idGasto, [idElemento] = @idElemento, [Cantidad] = @Cantidad WHERE [idDetalle] = @idDetalle">
         <DeleteParameters>
             <asp:Parameter Name="idDetalle" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="idGasto" Type="Int32" />
             <asp:Parameter Name="idElemento" Type="Int32" />
             <asp:Parameter Name="Cantidad" Type="Int32" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="idGasto" Type="Int32" />
             <asp:Parameter Name="idElemento" Type="Int32" />
             <asp:Parameter Name="Cantidad" Type="Int32" />
             <asp:Parameter Name="idDetalle" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
     
    
       
 
</asp:Content>

