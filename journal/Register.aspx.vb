Imports System.Data.SqlClient
Public Class Register
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Yug Kalathiya\source\repos\journal\journal\App_Data\user.mdf;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_register_Click(sender As Object, e As EventArgs) Handles btn_register.Click
        con.Open()
        Dim str As String = "insert into student values('" & txtbox_name.Text & "' , '" & txtbox_email.Text & "' ,'" & txtbox_password.Text & "' ,'" & txtbox_cpassword.Text & "')"
        Dim cmd As New SqlCommand(str, con)
        cmd.ExecuteNonQuery()
        Response.Redirect("home.aspx")
        con.Close()
    End Sub
End Class