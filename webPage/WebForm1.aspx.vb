Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim Connection As New OleDb.OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\angel\Desktop\VS\webPage\LoginDB.mdb")

        Connection.Open()

        Dim Command As New OleDb.OleDbCommand("Select * from LoginTable where username ='" & TextBox1.Text & "' and password ='" & TextBox2.Text & "'", Connection)

        Dim dr As OleDb.OleDbDataReader = Command.ExecuteReader

        Dim userFound As Boolean = False

        While dr.Read
            userFound = True
        End While

        If userFound = True Then
            Response.Redirect("Customers.aspx")
            Response.Write("Welcome to Customer Page")

        Else
            Response.Write("Username or Pasword is incorrect")
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox1.Focus()
        End If
        Connection.Close()

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox1.Focus()
    End Sub
End Class