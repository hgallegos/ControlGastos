
Partial Class Home
    Inherits System.Web.UI.Page


   
    Protected Sub LabelFechaHoy_Load(sender As Object, e As EventArgs) Handles LabelFechaHoy.Load
        LabelFechaHoy.Text = DateTime.Now.ToString("dd/MM/yyyy")
    End Sub
End Class
