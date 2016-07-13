
Partial Class Gestion_gestionCategorias
    Inherits System.Web.UI.Page

    Protected Sub GridViewCategorias_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewCategorias.SelectedIndexChanged
        Dim indice As Integer
        Dim idCategoria As Integer

        indice = GridViewCategorias.SelectedIndex()
        idCategoria = GridViewCategorias.SelectedDataKey(0)
        Response.Redirect("formCategorias.aspx?idCategoria=" & idCategoria)
    End Sub

    Protected Sub GridViewCategorias_PreRender(sender As Object, e As EventArgs) Handles GridViewCategorias.PreRender
        Try
            GridViewCategorias.HeaderRow.TableSection = TableRowSection.TableHeader
        Catch ex As Exception
        End Try
    End Sub
End Class
