
Partial Class Elementos_gestionElementos
    Inherits System.Web.UI.Page

    Protected Sub GridViewElementos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewElementos.SelectedIndexChanged
        Dim indice As Integer
        Dim idElemento As Integer

        indice = GridViewElementos.SelectedIndex()
        idElemento = GridViewElementos.SelectedDataKey(0)
        Response.Redirect("formElementos.aspx?idElemento=" & idElemento)
    End Sub
End Class
