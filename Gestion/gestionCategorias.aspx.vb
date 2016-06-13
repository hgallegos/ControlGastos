
Partial Class Gestion_gestionCategorias
    Inherits System.Web.UI.Page

    Protected Sub GridViewCategorias_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewCategorias.SelectedIndexChanged
        Dim indice As Integer
        Dim idCategoria As Integer

        indice = GridViewCategorias.SelectedIndex()
        idCategoria = GridViewCategorias.SelectedDataKey(0)
        Response.Redirect("formCategorias.aspx?idCategoria=" & idCategoria)
    End Sub
End Class
