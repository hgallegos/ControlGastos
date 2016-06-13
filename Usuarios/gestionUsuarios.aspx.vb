
Partial Class Usuarios_gestionUsuarios
    Inherits System.Web.UI.Page

    Protected Sub GridViewUsuarios_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewUsuarios.SelectedIndexChanged
        Dim indice As Integer
        Dim idUsuario As Integer

        indice = GridViewUsuarios.SelectedIndex()
        idUsuario = GridViewUsuarios.SelectedDataKey(0)
        Response.Redirect("formUsuarios.aspx?idUsuario=" & idUsuario)
    End Sub
End Class
