
Partial Class InformeCategorias
    Inherits System.Web.UI.Page


    Protected Sub GridViewGastos_Load(sender As Object, e As EventArgs) Handles GridViewGastos.Load
        LabelCategoriaMaxima.Text = "La categoria en la que más ha gastado es: " + GridViewGastos.Rows(0).Cells(0).Text
        LabelCategoriaMinima.Text = "La categoria en la que menos ha gastado es: " + GridViewGastos.Rows(GridViewGastos.Rows.Count - 1).Cells(0).Text
    End Sub
End Class
