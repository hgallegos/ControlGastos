
Partial Class Gastos_Detallar
    Inherits System.Web.UI.Page


    Protected Sub ButtonDetallar_Click(sender As Object, e As EventArgs) Handles ButtonDetallar.Click

        labelPreguntaDetalle.Text = ""
        ButtonNoDetallar.Visible = False
        ButtonDetallar.Visible = False
        ListBoxElementos.Visible = True



    End Sub

    Protected Sub ButtonNoDetallar_Click(sender As Object, e As EventArgs) Handles ButtonNoDetallar.Click

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub


End Class
