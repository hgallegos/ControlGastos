
Partial Class DetalleGastoaspx
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles GridViewDetalleGasto.Load
        If (Request.QueryString("idGasto") Is Nothing) Then

        End If
    End Sub

    Protected Sub GridViewDetalleGasto_PreRender(sender As Object, e As EventArgs) Handles GridViewDetalleGasto.PreRender
        Try
            GridViewDetalleGasto.HeaderRow.TableSection = TableRowSection.TableHeader
        Catch ex As Exception
        End Try
    End Sub
End Class
