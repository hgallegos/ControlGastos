
Partial Class FormGastos
    Inherits System.Web.UI.Page
    Dim suma_total As Integer
    Protected Sub Page_Load() Handles FormViewGastos.Load
        If (Request.QueryString("idGasto") Is Nothing) Then
            FormViewGastos.DefaultMode = FormViewMode.Insert
            FormViewDetalleGasto.Visible = False
            LabelAgregarDetalle.Visible = False
            LabelVerDetalles.Visible = False
        Else
            FormViewGastos.DefaultMode = FormViewMode.Edit
            FormViewDetalleGasto.Visible = True
            LabelAgregarDetalle.Visible = True
            LabelVerDetalles.Visible = True
            labelGasto.Text = "Ingreso agregado exitosamente!"
            labelGasto.CssClass = "mensaje_confirmacion"







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
        Response.Redirect("FormGastos.aspx?idGasto=" & idGasto)
    End Sub



    Protected Sub GridViewDetalle_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewDetalle.RowDataBound
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

 
  
    Protected Sub SqlDataSourceDetalle_Inserted(sender As Object, e As SqlDataSourceStatusEventArgs) Handles SqlDataSourceDetalle.Inserted
        'Cuando se ingresa una tupla al detalle del gasto
        Dim idGasto As Integer
        idGasto = Convert.ToInt32(e.Command.Parameters("@idGastoActual").Value)
        Response.Redirect("FormGastos.aspx?idGasto=" & idGasto)
    End Sub



End Class


