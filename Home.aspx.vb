
Partial Class Home
    Inherits System.Web.UI.Page

    Dim suma_total As Integer
    Dim ingresos, gastos As Integer
    Dim saldo As String

    Protected Sub Page_Load()
        Response.Redirect("InformeCategorias.aspx?home=1")
    End Sub


    Protected Sub LabelFechaHoy_Load(sender As Object, e As EventArgs) Handles LabelFechaHoy.Load
        LabelFechaHoy.Text = DateTime.Now.ToString("dd/MM/yyyy")
    End Sub


    Protected Sub GridViewIngresos_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewIngresos.RowDataBound
        If (e.Row.RowType = DataControlRowType.Header) Then
            'Sumador = 0
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
            LabelIngreso.Text = e.Row.Cells(3).Text.ToString
            ingresos = suma_total
        End If
    End Sub


    Protected Sub GridViewGastos_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewGastos.RowDataBound
        If (e.Row.RowType = DataControlRowType.Header) Then
            'Sumador = 0
            suma_total = 0
        ElseIf (e.Row.RowType = DataControlRowType.DataRow) Then
            'Sumar el total de la fila al total global 
            Dim total As Integer
            Try
                total = e.Row.Cells(1).Text
                suma_total += total
            Catch ex As Exception
                total = 0
            End Try

        ElseIf (e.Row.RowType = DataControlRowType.Footer) Then
            'Mostramos el valor de la suma total 
            e.Row.Cells(0).Text = "TOTAL:"
            e.Row.Cells(1).Text = String.Format("{0:c0}", suma_total)
            LabelGastos.Text = e.Row.Cells(1).Text.ToString
            gastos = suma_total
            calcular_Presupuesto()
        End If
    End Sub

    Protected Sub calcular_Presupuesto()
        saldo = ingresos - gastos
        LabelSaldo.Text = String.Format("{0:c0}", saldo)
        GridViewGastos.Visible = False
        GridViewIngresos.Visible = False
        traer_Info()
    End Sub

    Protected Sub traer_Info()

    End Sub



End Class
