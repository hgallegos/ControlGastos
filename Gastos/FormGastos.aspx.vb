
Partial Class FormGastos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles FormViewGastos.Load
        If (Request.QueryString("idGasto") Is Nothing) Then
            FormViewGastos.DefaultMode = FormViewMode.Insert
        End If
    End Sub




    Protected Sub FormViewGastos_ItemInserted(sender As Object, e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormViewGastos.ItemInserted
        If (e.Exception Is Nothing) Then
            labelGasto.Text = "Gasto agregado exitosamente"
            Server.Transfer("Detallar.aspx")
        Else
            labelGasto.Text = "No se pudo agregar el gasto"
        End If
        e.ExceptionHandled = True
    End Sub



End Class


