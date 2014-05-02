
Partial Class materials
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'Set focus to searchTB2 when page loads
        searchTB2.Focus()

    End Sub

    Protected Sub searchButton2_Click(sender As Object, e As EventArgs) Handles searchButton2.Click

        Dim searchword As String

        searchword = "Select * From DB_Materials where (materialType Like '%" + searchTB2.Text.ToString() + "%') OR (materialTitle Like '%" + searchTB2.Text.ToString() + "%') OR (materialAuthor Like '%" + searchTB2.Text.ToString() + "%') OR (materialAvailability Like '%" + searchTB2.Text.ToString() + "%')"

        SearchmaterialsDataSource.SelectCommand = searchword


    End Sub
End Class
