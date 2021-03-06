﻿
Partial Class Elementos_formElementos
    Inherits System.Web.UI.Page

    Protected Sub FormViewElementos_Load(sender As Object, e As EventArgs) Handles FormViewElementos.Load
        If (Request.QueryString("idElemento") Is Nothing) Then
            FormViewElementos.DefaultMode = FormViewMode.Insert
        End If
    End Sub

    Protected Sub FormViewElementos_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormViewElementos.ItemInserted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "¡Elemento ingresado exitosamente!"
            LabelMensaje.CssClass = "alert alert-success"
        Else
            LabelMensaje.Text = "No se pudo ingresar el elemento"
            LabelMensaje.CssClass = "alert alert-danger"
        End If
        e.ExceptionHandled = True
    End Sub

    Protected Sub FormViewElementos_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormViewElementos.ItemUpdated
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "¡Elemento actualizado exitosamente!"
            LabelMensaje.CssClass = "alert alert-success"
        Else
            LabelMensaje.Text = "No se pudo actualizar el elemento"
            LabelMensaje.CssClass = "alert alert-danger"
        End If
        e.ExceptionHandled = True
    End Sub

    Protected Sub LinkButtonVolver_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionElementos.aspx")
    End Sub

    Protected Sub UpdateCancelButton_Click(sender As Object, e As EventArgs)
        Dim idElemento As Integer

        idElemento = Request.QueryString("idElemento")
        Response.Redirect("formElementos.aspx?idElemento=" & idElemento)
    End Sub

    Protected Sub InsertCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionElementos.aspx")
    End Sub

    Protected Sub FormViewElementos_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormViewElementos.ItemDeleted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Elemento eliminado exitosamente!"
            LabelMensaje.CssClass = "alert alert-success"
        Else
            LabelMensaje.Text = "No se pudo eliminar el elemento"
            LabelMensaje.CssClass = "alert alert-danger"
        End If
        e.ExceptionHandled = True
    End Sub


End Class
