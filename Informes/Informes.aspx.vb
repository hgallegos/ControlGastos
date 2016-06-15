
Partial Class Informes_Informes
    Inherits System.Web.UI.Page

    Protected Sub GridViewGastosCategoria_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewGastosCategoria.SelectedIndexChanged
        Dim indice As Integer
        Dim gastosCategoria As Integer

        indice = GridViewGastosCategoria.SelectedIndex()
        gastosCategoria = GridViewGastosCategoria.SelectedDataKey(0)
        MsgBox("El indice es: " & indice & "y la categoria es: " & gastosCategoria)
    End Sub

    Protected Sub ButtonGenerarInforme_Click(sender As Object, e As EventArgs) Handles ButtonGenerarInforme.Click
        LabelMayorGasto.Visible = True
        LabelMenorGasto.Visible = True
        'Aqui ingresar calculos?
    End Sub
End Class
