
Partial Class FormGastos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles FormViewGastos.Load
        If (Request.QueryString("idGasto") Is Nothing) Then
            FormViewGastos.DefaultMode = FormViewMode.Insert
        End If
    End Sub

End Class


