Public Class Customers
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim Connection As New OleDb.OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\angel\Desktop\VS\webPage\CustomersDB.mdb")

        Connection.Open()

        Dim Command As New OleDb.OleDbCommand("Insert into Customers(CustomersID, Lastname, Firstname) values ('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "')", Connection)

        Command.ExecuteNonQuery()
        Connection.Close()
        Response.Write("The Following was Added " & TextBox2.Text)

    End Sub
End Class