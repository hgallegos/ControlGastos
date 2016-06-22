
Partial Class Usuarios_formUsuarios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles FormViewUsuarios.Load
        If (Request.QueryString("idUsuario") Is Nothing) Then
            FormViewUsuarios.DefaultMode = FormViewMode.Insert
        End If
    End Sub


    Protected Sub LinkButtonVolver_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionUsuarios.aspx")
    End Sub

    Protected Sub UpdateCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionUsuarios.aspx")
    End Sub

    Protected Sub InsertCancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("gestionUsuarios.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
