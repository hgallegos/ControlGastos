
Partial Class FormGastos
    Inherits System.Web.UI.Page
    Dim suma_total As Integer
    Protected Sub Page_Load() Handles FormViewGastos.Load
        If (Request.QueryString("idGasto") Is Nothing) Then
            FormViewGastos.DefaultMode = FormViewMode.Insert

        Else
            FormViewGastos.DefaultMode = FormViewMode.Edit

            labelGasto.Text = "Gasto agregado exitosamente!"
            labelGasto.CssClass = "alert alert-success"







        End If
    End Sub




    Protected Sub FormViewGastos_ItemInserted(sender As Object, e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormViewGastos.ItemInserted

    End Sub

    Protected Sub idGastoTextBox_Load(sender As Object, e As System.EventArgs)
        Dim textboxIdGasto As TextBox
        textboxIdGasto = sender
        textboxIdGasto.Text = Request.QueryString("idGasto")
        textboxIdGasto.Visible = False
    End Sub




    Protected Sub SqlDataSourceGastos_Inserted(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SqlDataSourceGastos.Inserted
        'Cuando se ingresa el gasto
        Dim idGasto As Integer
        idGasto = Convert.ToInt32(e.Command.Parameters("@idNuevoGasto").Value)
        Response.Redirect("gestionGastos.aspx")
    End Sub





 
  




End Class


