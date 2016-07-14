
Partial Class FormGastos
    Inherits System.Web.UI.Page
    Dim totalUpdate As Integer
    Dim suma_total As Integer = 0
    Protected Sub Page_Load() Handles FormViewGastos.Load
        If (Request.QueryString("idGasto") Is Nothing) Then
            FormViewGastos.DefaultMode = FormViewMode.Insert
            FormViewDetalleGasto.Visible = False

            LabelAgregarDetalle.Visible = False
            LabelVerDetalles.Visible = False
            ButtonConfirmar.Visible = False
            FormViewElementos.DefaultMode = FormViewMode.Insert
            nuevo.Visible = False
            FormViewElementos.Visible = False

        Else
            FormViewGastos.DefaultMode = FormViewMode.ReadOnly
            GridViewDetalle.Visible = True
            FormViewDetalleGasto.Visible = True
            LabelAgregarDetalle.Visible = True
            LabelVerDetalles.Visible = True

            ButtonConfirmar.Visible = True
            nuevo.Visible = True
            'labelGasto.Text = "Gasto agregado exitosamente!"
            'labelGasto.CssClass = "alert alert-success"
            If (Request.QueryString("elem") Is Nothing) Then
                FormViewElementos.DefaultMode = FormViewMode.Insert
                FormViewElementos.Visible = False
            Else
                If (Request.QueryString("elem") = 1) Then
                    FormViewElementos.DefaultMode = FormViewMode.Insert
                    FormViewElementos.Visible = True
                Else
                    FormViewElementos.DefaultMode = FormViewMode.Insert
                    FormViewElementos.Visible = False
                End If

            End If



        End If
        If (Request.QueryString("suma_total") Is Nothing) Then

        Else
            SqlDataSourceUpdatearGasto.Update()
            Response.Redirect("DetalleGastos.aspx?idGasto=" & Request.QueryString("idGasto"))
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
        idGasto = e.Command.Parameters("@idNuevoGasto").Value
        Response.Redirect("FormGastosDetalle.aspx?idGasto=" & idGasto)
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
            e.Row.Cells(3).Text = "TOTAL:"
            e.Row.Cells(4).Text = String.Format("{0:c0}", suma_total)
            e.Row.Cells(0).Text = "" & suma_total
            e.Row.Cells(0).CssClass = "hidden"

        End If


    End Sub


 
  
    Protected Sub SqlDataSourceDetalle_Inserted(sender As Object, e As SqlDataSourceStatusEventArgs) Handles SqlDataSourceDetalle.Inserted
        'Cuando se ingresa una tupla al detalle del gasto
        Dim idGasto As Integer
        idGasto = Convert.ToInt32(e.Command.Parameters("@idGastoActual").Value)
        Response.Redirect("FormGastosDetalle.aspx?idGasto=" & idGasto)
    End Sub




    Protected Sub ButtonConfirmar_Click(sender As Object, e As EventArgs) Handles ButtonConfirmar.Click
        Try
            If (GridViewDetalle.FooterRow.Cells(0).Text.ToString() = "0") Then
                labelGasto.Text = "Agrega items!"
                labelGasto.CssClass = "alert alert-warning"
            Else

                Dim idGasto = Request.QueryString("idGasto")

                Response.Redirect("FormGastosDetalle.aspx?idGasto=" & idGasto & "&suma_total=" & GridViewDetalle.FooterRow.Cells(0).Text.ToString())



            End If

        Catch
            labelGasto.Text = "Agrega items!"
            labelGasto.CssClass = "alert alert-warning fade in close"

        End Try



    End Sub

    Protected Sub InsertCancelButton_Click(sender As Object, e As EventArgs)
        Dim idGasto = Request.QueryString("idGasto")
        Response.Redirect("FormGastosDetalle.aspx?idGasto=" & idGasto & "&elem=0")

    End Sub

    Protected Sub nuevo_Click(sender As Object, e As EventArgs) Handles nuevo.Click
        Dim idGasto = Request.QueryString("idGasto")
        Response.Redirect("FormGastosDetalle.aspx?idGasto=" & idGasto & "&elem=1")
    End Sub

    Protected Sub SqlDataSourceElementos_Inserted(sender As Object, e As SqlDataSourceStatusEventArgs) Handles SqlDataSourceElementos.Inserted
        Dim idGasto = Request.QueryString("idGasto")
        Response.Redirect("FormGastosDetalle.aspx?idGasto=" & idGasto)
    End Sub

    Protected Sub FormViewGastos_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormViewGastos.ItemDeleted
        If (e.Exception Is Nothing) Then
            labelGasto.Text = "Gasto eliminada exitosamente!"
            labelGasto.CssClass = "alert alert-success"
        Else
            labelGasto.Text = "No se pudo eliminar el gasto"
            labelGasto.CssClass = "alert alert-danger"
        End If
        e.ExceptionHandled = True
    End Sub
End Class


