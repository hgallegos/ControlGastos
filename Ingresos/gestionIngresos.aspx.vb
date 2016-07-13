
Partial Class Ingresos_gestionIngresos
    Inherits System.Web.UI.Page

   
    Protected Sub GridViewIngresos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewIngresos.SelectedIndexChanged
        Dim indice As Integer
        Dim idIngreso As Integer

        indice = GridViewIngresos.SelectedIndex()
        idIngreso = GridViewIngresos.SelectedDataKey(0)
        Response.Redirect("formIngreso.aspx?idIngreso=" & idIngreso)
    End Sub

    Protected Sub GridViewIngresos_PreRender(sender As Object, e As EventArgs) Handles GridViewIngresos.PreRender
        Try
            GridViewIngresos.HeaderRow.TableSection = TableRowSection.TableHeader
        Catch ex As Exception
        End Try
    End Sub

    Dim suma_total As Integer
    Protected Sub GridViewIngresos_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewIngresos.RowDataBound
        If (e.Row.RowType = DataControlRowType.Header) Then
            'Iniciar el sumador en 0
            suma_total = 0
        ElseIf (e.Row.RowType = DataControlRowType.DataRow) Then
            'Sumar el total de la fila al total global 
            Dim total As Integer
            Try
                total = e.Row.Cells(3).Text
                suma_total += total
            Catch ex As Exception
                total = 0
            End Try

        ElseIf (e.Row.RowType = DataControlRowType.Footer) Then
            'Mostramos el valor de la suma total 
            e.Row.Cells(2).Text = "TOTAL:"
            e.Row.Cells(3).Text = String.Format("{0:c0}", suma_total)
        End If
    End Sub
End Class
