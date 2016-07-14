
Partial Class ingresos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load()
        If (Request.QueryString("d") Is Nothing) Then
        Else

            LabelMensaje.Text = "No se guardo el gasto!"
            LabelMensaje.CssClass = "alert alert-success fade in close"
        End If

    End Sub


    Protected Sub GridViewGastos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewGastos.SelectedIndexChanged
        'Con esto nos movemos al detalle de gastos
        Dim indice As Integer
        Dim idGasto As Integer

        indice = GridViewGastos.SelectedIndex()
        idGasto = GridViewGastos.SelectedDataKey(0)
        Response.Redirect("DetalleGastos.aspx?idGasto=" & idGasto)
    End Sub



    Protected Sub GridViewGastos_PreRender(sender As Object, e As EventArgs) Handles GridViewGastos.PreRender
        Try
            GridViewGastos.HeaderRow.TableSection = TableRowSection.TableHeader
        Catch ex As Exception
        End Try
    End Sub
End Class
