
Partial Class InformeCategorias
    Inherits System.Web.UI.Page


    Protected Sub GridViewGastos_Load(sender As Object, e As EventArgs) Handles GridViewGastos.Load
        Try
            If (GridViewGastos.FooterRow.Cells(0).Text.ToString() = "0") Then
                LabelCategoriaMaxima.Text = " Agrega categorias de gastos"
                LabelCategoriaMaxima.CssClass = "alert alert-danger"
                LabelCategoriaMinima.Visible = False
            Else
                LabelCategoriaMaxima.Text = "La categoria en la que más ha gastado es: " + GridViewGastos.Rows(0).Cells(0).Text
                LabelCategoriaMinima.Text = "La categoria en la que menos ha gastado es: " + GridViewGastos.Rows(GridViewGastos.Rows.Count - 1).Cells(0).Text
            End If
        Catch
            LabelCategoriaMaxima.Text = " Agrega categorias de gastos"
            LabelCategoriaMaxima.CssClass = "alert alert-danger"
        End Try
    End Sub
End Class
