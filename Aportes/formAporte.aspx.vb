
Partial Class Aportes_formAporte
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles FormViewAportes.Load
        If (Request.QueryString("idAporte") Is Nothing) Then
            FormViewAportes.DefaultMode = FormViewMode.Insert
        End If
    End Sub

    Protected Sub InsertCancelButton_Click(sender As Object, e As System.EventArgs)
        Response.Redirect("gestionAportes.aspx")
    End Sub

    Protected Sub LinkButtonVolver_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionAportes.aspx")
    End Sub



    Protected Sub FormViewAportes_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormViewAportes.ItemInserted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Aporte agregado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo agregar el aporte"
            LabelMensaje.CssClass = "mensaje_error"
        End If
    End Sub

    Protected Sub FormViewAportes_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormViewAportes.ItemUpdated
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Aporte actualizado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo actualizar el aporte"
            LabelMensaje.CssClass = "mensaje_error"
        End If
    End Sub
End Class
