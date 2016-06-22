
Partial Class Ingresos_formIngreso
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles FormViewIngresos.Load
        If (Request.QueryString("idIngreso") Is Nothing) Then
            FormViewIngresos.DefaultMode = FormViewMode.Insert
        End If
    End Sub


    Protected Sub LinkButtonVolver_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionIngresos.aspx")
    End Sub

    Protected Sub InsertCancelButton_Click(sender As Object, e As System.EventArgs)
        Response.Redirect("gestionIngresos.aspx")
    End Sub


    Protected Sub FormViewIngresos_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormViewIngresos.ItemInserted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Ingreso agregado exitosamente!"
        Else
            LabelMensaje.Text = "No se pudo agregar el ingreso"
        End If
    End Sub

    Protected Sub FormViewIngresos_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormViewIngresos.ItemUpdated
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Ingreso actualizado exitosamente!"
        Else
            LabelMensaje.Text = "No se pudo actualizar el ingreso"
        End If
    End Sub
End Class
