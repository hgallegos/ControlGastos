
Partial Class Gestion_gestionSubcategorias
    Inherits System.Web.UI.Page

    Protected Sub GridViewSubcategorias_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewSubcategorias.SelectedIndexChanged
        Dim indice As Integer
        Dim idSubcategoria As Integer

        indice = GridViewSubcategorias.SelectedIndex()
        idSubcategoria = GridViewSubCategorias.SelectedDataKey(0)
        Response.Redirect("formSubcategorias.aspx?idSubcategoria=" & idSubcategoria)
    End Sub

    Protected Sub GridViewSubcategorias_PreRender(sender As Object, e As EventArgs) Handles GridViewSubcategorias.PreRender
        Try
            GridViewSubcategorias.HeaderRow.TableSection = TableRowSection.TableHeader
        Catch ex As Exception
        End Try
    End Sub
End Class
