
Partial Class Ahorro_formAhorro
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles FormViewAhorro.Load
        If (Request.QueryString("idAhorro") Is Nothing) Then
            FormViewAhorro.DefaultMode = FormViewMode.Insert
        End If
    End Sub

    Protected Sub UpdateCancelButton_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub InsertCancelButton_Click(sender As Object, e As System.EventArgs)
        Response.Redirect("gestionAhorros.aspx")
    End Sub

    Protected Sub LinkButtonVolver_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionAhorros.aspx")
    End Sub

    Protected Sub FormViewAhorro_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormViewAhorro.ItemInserted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Ahorro agregado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo agregar el ahorro"
            LabelMensaje.CssClass = "mensaje_error"
        End If
    End Sub


    Protected Sub FormViewAhorro_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormViewAhorro.ItemUpdated
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Ahorro actualizado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo actualizar el ahorro"
            LabelMensaje.CssClass = "mensaje_error"
        End If
    End Sub

    Protected Sub FormViewAhorro_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormViewAhorro.ItemDeleted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Ahorro eliminado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo eliminar el ahorro"
            LabelMensaje.CssClass = "mensaje_error"
        End If
    End Sub
End Class
