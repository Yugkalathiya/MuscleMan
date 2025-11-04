Imports System.Data.SqlClient
Public Class Login
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Yug Kalathiya\source\repos\journal\journal\App_Data\user.mdf;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_login_Click(sender As Object, e As EventArgs) Handles btn_login.Click

        Dim user_name As String = ""
        Dim user_email As String = ""
        Dim user_pass As String = ""

        con.Open()
        Dim cmd As New SqlCommand("select Name,Email,Password from student where Email = '" & txtbox_email.Text & "'", con)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()

        While dr.Read
            user_name = dr.Item(0).ToString()
            user_email = dr.Item(1).ToString()
            user_pass = dr.Item(2).ToString()
        End While

        con.Close()


        If String.IsNullOrWhiteSpace(txtbox_email.Text) OrElse String.IsNullOrWhiteSpace(txtbox_password.Text) Then
            MsgBox("Invalid user !!!")

        Else
            If user_email.Trim().ToLower() = txtbox_email.Text.Trim().ToLower AndAlso user_pass.Trim().ToLower() = txtbox_password.Text.Trim().ToLower Then
                Response.Redirect("home.aspx")
            Else
                MsgBox("Invalid email or password !!!")
            End If
        End If
    End Sub
End Class