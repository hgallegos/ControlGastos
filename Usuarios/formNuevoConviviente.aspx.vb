
Partial Class Usuarios_formUsuarios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles FormViewUsuarios.Load
        If (Request.QueryString("idUsuario") Is Nothing) Then
            FormViewUsuarios.DefaultMode = FormViewMode.Insert
        End If
    End Sub


    Protected Sub LinkButtonVolver_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionUsuarios.aspx")
    End Sub

    Protected Sub UpdateCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionUsuarios.aspx")
    End Sub

    Protected Sub InsertCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionUsuarios.aspx")
    End Sub


    Protected Sub FormViewUsuarios_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormViewUsuarios.ItemInserted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Usuario ingresado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo ingresar el usuario"
            LabelMensaje.CssClass = "mensaje_error"
        End If
        e.ExceptionHandled = True
    End Sub

    Protected Sub FormViewUsuarios_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormViewUsuarios.ItemUpdated
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Usuario actualizado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo actualizar el usuario."
            LabelMensaje.CssClass = "mensaje_error"
        End If
        e.ExceptionHandled = True
    End Sub

    Protected Sub FormViewUsuarios_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormViewUsuarios.ItemDeleted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Usuario eliminado exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo eliminar el usuario"
            LabelMensaje.CssClass = "mensaje_error"
        End If
        e.ExceptionHandled = True
    End Sub
End Class
