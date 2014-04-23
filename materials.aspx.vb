
Partial Class materials
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'Set focus to searchTB2 when page loads
        searchTB2.Focus()

    End Sub

    Protected Sub searchButton2_Click(sender As Object, e As EventArgs) Handles searchButton2.Click




    End Sub

    Protected Sub clearButtom_Click(sender As Object, e As EventArgs) Handles clearButtom.Click

        'Clear searchTB2 text
        searchTB2.Text = ""

    End Sub
End Class
