
Partial Class Aportes_gestionAportes
    Inherits System.Web.UI.Page

    Protected Sub GridViewAportes_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewAportes.SelectedIndexChanged
        Dim indice As Integer
        Dim idAporte As Integer

        indice = GridViewAportes.SelectedIndex()
        idAporte = GridViewAportes.SelectedDataKey(0)
        Response.Redirect("formAporte.aspx?idAporte=" & idAporte)
    End Sub
End Class
