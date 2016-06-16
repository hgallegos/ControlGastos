
Partial Class Gastos_Detallar
    Inherits System.Web.UI.Page


    Protected Sub ButtonDetallar_Click(sender As Object, e As EventArgs) Handles ButtonDetallar.Click

        labelPreguntaDetalle.Text = ""
        ButtonNoDetallar.Visible = False
        ButtonDetallar.Visible = False
        ' FormViewElementos.DefaultMode = FormViewMode.Insert
        ' FormViewElementos.Visible = True
        ' GridViewDetalleGastos.Visible = True
        ' FormViewDetalleGastos.DefaultMode = FormViewMode.Insert








    End Sub

    Protected Sub ButtonNoDetallar_Click(sender As Object, e As EventArgs) Handles ButtonNoDetallar.Click

    End Sub

 





End Class
