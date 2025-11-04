Imports System.Data.SqlClient
Public Class home
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Yug Kalathiya\source\repos\journal\journal\App_Data\user.mdf;Integrated Security=True")

    Public Sub show()

        con.Open()
        Dim cmd As New SqlCommand("select * from Workout", con)
        Dim sda As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        sda.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        Me.DataBind()
        con.Close()

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        '        Label1.Text = "Welcome Back, " & Session("user_name").ToString()

    End Sub

    Protected Sub btn_save_Click(sender As Object, e As EventArgs) Handles btn_save.Click
        con.Open()
        Dim str As String = " insert into Workout values( '" & txtbox_date.Text & "' ,'" & txtbox_workout_type.Text & "' ,'" & txtbox_exercise_name.Text & "' ,
                                                         '" & txtbox_sets.Text & "' ,'" & txtbox_reps.Text & "' ,'" & txtbox_weight.Text & "') "
        Dim cmd As New SqlCommand(str, con)
        cmd.ExecuteNonQuery()
        MsgBox("Your Record Inserted Successfully...")
        con.Close()
        show()

    End Sub

    Protected Sub btn_clear_Click(sender As Object, e As EventArgs) Handles btn_clear.Click

        txtbox_date.Text = ""
        txtbox_workout_type.Text = ""
        txtbox_exercise_name.Text = ""
        txtbox_sets.Text = ""
        txtbox_reps.Text = ""
        txtbox_weight.Text = ""


    End Sub

    Protected Sub btn_delete_Click(sender As Object, e As EventArgs) Handles btn_delete.Click
        con.Open()

        Dim cmd As New SqlCommand("delete from Workout where Date = '" & txtbox_date.Text & "' ", con)
        cmd.ExecuteNonQuery()
        MsgBox("Your Record Deleted Successfully...")
        con.Close()
        show()

    End Sub

    Protected Sub btn_modify_Click(sender As Object, e As EventArgs) Handles btn_modify.Click
        con.Open()

        Dim cmd As New SqlCommand(" update Workout set Workout_type = '" & txtbox_workout_type.Text & "',Exercise= '" & txtbox_exercise_name.Text & "',
                                  Sets= '" & txtbox_sets.Text & "' ,Reps= '" & txtbox_reps.Text & "' ,Weight= '" & txtbox_weight.Text & "'
                                  where Date = '" & txtbox_date.Text & "' ", con)
        cmd.ExecuteNonQuery()
        MsgBox("Your Record Deleted Successfully...")
        con.Close()
        show()
    End Sub
End Class