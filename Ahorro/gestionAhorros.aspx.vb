
Partial Class Ahorro_gestionAhorros
    Inherits System.Web.UI.Page

    Protected Sub GridViewAhorro_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewAhorro.SelectedIndexChanged
        Dim indice As Integer
        Dim idAhorro As Integer

        indice = GridViewAhorro.SelectedIndex()
        idAhorro = GridViewAhorro.SelectedDataKey(0)
        Response.Redirect("formAhorro.aspx?idAhorro=" & idAhorro)
    End Sub
End Class
