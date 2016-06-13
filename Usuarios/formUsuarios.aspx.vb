
Partial Class Usuarios_formUsuarios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load() Handles FormViewUsuarios.Load
        If (Request.QueryString("idUsuario") Is Nothing) Then
            FormViewUsuarios.DefaultMode = FormViewMode.Insert
        End If
    End Sub


End Class
