
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
End Class
