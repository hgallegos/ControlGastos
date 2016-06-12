
Partial Class DetalleGastoaspx
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles GridViewDetalleGasto.Load
        If (Request.QueryString("idGasto") Is Nothing) Then

        End If
    End Sub

End Class
