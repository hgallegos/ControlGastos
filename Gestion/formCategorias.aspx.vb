﻿
Partial Class Gestion_formCategorias
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles FormViewCategorias.Load
        If (Request.QueryString("idCategoria") Is Nothing) Then
            FormViewCategorias.DefaultMode = FormViewMode.Insert
        End If
    End Sub


    Protected Sub LinkButtonVolver_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionCategorias.aspx")
    End Sub

    Protected Sub UpdateCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionCategorias.aspx")
    End Sub

    Protected Sub InsertCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionCategorias.aspx")
    End Sub


    Protected Sub FormViewCategorias_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormViewCategorias.ItemInserted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "¡Categoria ingresada exitosamente!"
            LabelMensaje.CssClass = "alert alert-success"
        Else
            LabelMensaje.Text = "No se pudo ingresar la categoria"
            LabelMensaje.CssClass = "alert alert-danger"
        End If
        e.ExceptionHandled = True
    End Sub

    Protected Sub FormViewCategorias_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormViewCategorias.ItemUpdated
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "¡Categoria actualizada exitosamente!"
            LabelMensaje.CssClass = "alert alert-success"
        Else
            LabelMensaje.Text = "No se pudo actualizar la categoria"
            LabelMensaje.CssClass = "alert alert-danger"
        End If
        e.ExceptionHandled = True
    End Sub

    Protected Sub FormViewCategorias_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormViewCategorias.ItemDeleted
        If (e.Exception Is Nothing) Then
            LabelMensaje.Text = "Categoria eliminada exitosamente!"
            LabelMensaje.CssClass = "alert alert-success"
        Else
            LabelMensaje.Text = "No se pudo eliminar la categoria"
            LabelMensaje.CssClass = "alert alert-danger"
        End If
        e.ExceptionHandled = True
    End Sub
End Class
