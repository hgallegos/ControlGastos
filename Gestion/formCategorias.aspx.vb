
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


End Class
