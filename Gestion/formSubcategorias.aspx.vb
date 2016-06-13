
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
End Class
