
Partial Class Gestion_formSubcategorias
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles FormViewSubcategoria.Load
        If (Request.QueryString("idSubcategoria") Is Nothing) Then
            FormViewSubcategoria.DefaultMode = FormViewMode.Insert
        End If
    End Sub

    Protected Sub LinkButtonVolver_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionSubcategorias.aspx")
    End Sub

    Protected Sub UpdateCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionSubcategorias.aspx")
    End Sub

    Protected Sub InsertCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionSubcategorias.aspx")
    End Sub

    Protected Sub FormViewSubcategoria_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormViewSubcategoria.ItemInserted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "¡Subcategoria ingresada exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo ingresar la subcategoria"
            LabelMensaje.CssClass = "mensaje_error"
        End If
        e.ExceptionHandled = True
    End Sub

    Protected Sub FormViewSubcategoria_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormViewSubcategoria.ItemUpdated
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "¡Subcategoria actualizada exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo actualizar la subcategoria"
            LabelMensaje.CssClass = "mensaje_error"
        End If
        e.ExceptionHandled = True
    End Sub

    Protected Sub FormViewSubcategoria_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormViewSubcategoria.ItemDeleted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Subcategoria eliminada exitosamente!"
            LabelMensaje.CssClass = "mensaje_confirmacion"
        Else
            LabelMensaje.Text = "No se pudo eliminar la subcategoria"
            LabelMensaje.CssClass = "mensaje_error"
        End If
        e.ExceptionHandled = True
    End Sub
End Class
