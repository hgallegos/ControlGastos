
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

        Else
            labelGasto.Text = "No se pudo agregar el gasto"
        End If
        e.ExceptionHandled = True
    End Sub



    Protected Sub SqlDataSourceGastos_Inserted(sender As Object, e As SqlDataSourceStatusEventArgs) Handles SqlDataSourceGastos.Inserted

        Dim idGasto As Integer
        idGasto = e.Command.Parameters("@idNuevoGasto").Value
        Response.Redirect("FormGastos.aspx?idGasto" & idGasto)
    End Sub



End Class


