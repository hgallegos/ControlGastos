﻿
Partial Class ingresos
    Inherits System.Web.UI.Page

    Protected Sub GridViewGastos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewGastos.SelectedIndexChanged
        'Con esto nos movemos al detalle de gastos
        Dim indice As Integer
        Dim idGasto As Integer

        indice = GridViewGastos.SelectedIndex()
        idGasto = GridViewGastos.SelectedDataKey(0)
        Response.Redirect("DetalleGastos.aspx?idGasto=" & idGasto)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Server.Transfer("FormGastos.aspx")
    End Sub
End Class