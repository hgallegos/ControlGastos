
Partial Class Informes_Transacciones
    Inherits System.Web.UI.Page

    Dim suma_total As Integer
    Dim ingresos, gastos As Integer
    Dim saldo As String

    Protected Sub BotonInforme_Click(sender As Object, e As EventArgs) Handles BotonInforme.Click

        Dim fechaInicio, fechaFin As Date
        fechaInicio = CalendarDesde.SelectedDate
        fechaFin = CalendarHasta.SelectedDate


        LabelFormFecha1.Visible = False
        LabelFormFecha2.Visible = False

        LabelFechas.Visible = False
        CalendarDesde.Visible = False
        CalendarHasta.Visible = False
        BotonInforme.Visible = False

        LabelTitulo.Text = "Transacciones entre " + fechaInicio + " y " + fechaFin
        'LabelRangoFechas.Visible = True

        LabelIngresos.Visible = True
        GridViewIngresos.Visible = True

        LabelGastos.Visible = True
        GridViewGastos.Visible = True

        LabelPresupuesto.Visible = True





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
                total = e.Row.Cells(3).Text
                suma_total += total
            Catch ex As Exception
                total = 0
            End Try

        ElseIf (e.Row.RowType = DataControlRowType.Footer) Then
            'Mostramos el valor de la suma total 
            e.Row.Cells(2).Text = "TOTAL:"
            e.Row.Cells(3).Text = String.Format("{0:c0}", suma_total)
            gastos = suma_total
            calcular_Presupuesto()
        End If
    End Sub

    Protected Sub calcular_Presupuesto()
        Dim presupuesto As Integer
        saldo = ingresos - gastos
        presupuesto = ingresos - gastos
        LabelPresupuesto.Text = String.Format("{0:c0}", presupuesto)

        If (presupuesto > 0) Then
            LabelPresupuesto.CssClass = "alert alert-success"
            Label1.Visible = True
        Else
            LabelPresupuesto.CssClass = "alert alert-danger"
            Label1.Visible = True
        End If
    End Sub




End Class
