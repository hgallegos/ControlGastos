
Partial Class Usuarios_gestionPerfiles
    Inherits System.Web.UI.Page

    Protected Sub GridViewPerfiles_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewPerfiles.SelectedIndexChanged
        Dim indice As Integer
        Dim idPerfil As Integer

        indice = GridViewPerfiles.SelectedIndex()
        idPerfil = GridViewPerfiles.SelectedDataKey(0)
        Response.Redirect("formPerfiles.aspx?idPerfil=" & idPerfil)

    End Sub

    Protected Sub GridViewPerfiles_PreRender(sender As Object, e As EventArgs) Handles GridViewPerfiles.PreRender
        Try
            GridViewPerfiles.HeaderRow.TableSection = TableRowSection.TableHeader
        Catch ex As Exception
        End Try
    End Sub
End Class
