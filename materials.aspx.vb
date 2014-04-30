
Partial Class materials
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'Set focus to searchTB2 when page loads
        searchTB2.Focus()

    End Sub



    Protected Sub clearButton_Click(sender As Object, e As EventArgs) Handles clearButton.Click

        'Clear searchTB2 text
        searchTB2.Text = ""

    End Sub

    Protected Sub searchButton2_Click(sender As Object, e As EventArgs) Handles searchButton2.Click

        Dim searchword As String


        searchword = "Select * From DatabaseMaterial where (Title Like '%" + searchTB2.Text.ToString() + "%') OR (ISBN Like '%" + searchTB2.Text.ToString() + "%') OR (Author Like '%" + searchTB2.Text.ToString() + "%') OR (Publisher Like '%" + searchTB2.Text.ToString() + "%') OR (Type Like '%" + searchTB2.Text.ToString() + "%') OR (Description Like '%" + searchTB2.Text.ToString() + "%') OR (Copyright Like '%" + searchTB2.Text.ToString() + "%')"


        SqlDataSource1.SelectCommand = searchword


    End Sub
End Class
