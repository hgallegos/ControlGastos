
Partial Class Perfiles_formPerfiles
    Inherits System.Web.UI.Page

    Protected Sub FormViewPerfiles_Load(sender As Object, e As EventArgs) Handles FormViewPerfiles.Load
        If (Request.QueryString("idperfil") Is Nothing) Then
            FormViewPerfiles.DefaultMode = FormViewMode.Insert
        End If
    End Sub

    Protected Sub LinkButtonVolver_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionPerfiles.aspx")
    End Sub


    Protected Sub InsertCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionPerfiles.aspx")
    End Sub

    Protected Sub FormViewPerfiles_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormViewPerfiles.ItemInserted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "¡Perfil ingresado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo ingresar el perfil"
            LabelMensaje.CssClass = "mensaje_error"
        End If
    End Sub

    Protected Sub FormViewPerfiles_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormViewPerfiles.ItemUpdated
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "!Perfil actualizado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo actualizar el perfil"
            LabelMensaje.CssClass = "mensaje_error"
        End If
    End Sub

    Protected Sub UpdateCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("formPerfiles.aspx?idPerfil=" & Request.QueryString("idPerfil"))
    End Sub

    Protected Sub FormViewPerfiles_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormViewPerfiles.ItemDeleted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Perfil eliminado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo eliminar el perfil"
            LabelMensaje.CssClass = "mensaje_error"
        End If
    End Sub
End Class
