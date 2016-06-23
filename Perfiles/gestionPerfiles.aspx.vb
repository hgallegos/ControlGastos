
Partial Class Usuarios_gestionPerfiles
    Inherits System.Web.UI.Page

    Protected Sub GridViewPerfiles_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewPerfiles.SelectedIndexChanged
        Dim indice As Integer
        Dim idPerfil As Integer

        indice = GridViewPerfiles.SelectedIndex()
        idPerfil = GridViewPerfiles.SelectedDataKey(0)
        Response.Redirect("formPerfiles.aspx?idPerfil=" & idPerfil)

    End Sub
End Class
