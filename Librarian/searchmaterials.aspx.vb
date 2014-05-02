
Partial Class Librarian_searchmaterials
    Inherits System.Web.UI.Page

    Protected Sub searchButton3_Click(sender As Object, e As EventArgs) Handles searchButton3.Click

        Dim searchword As String


        searchword = "Select * From DB_Materials WHERE (materialCallNumber Like '%" + searchTB4.Text.ToString() + "%') OR (materialID Like '%" + searchTB4.Text.ToString() + "%') OR (materialTitle Like '%" + searchTB4.Text.ToString() + "%') OR (materialISBN Like '%" + searchTB4.Text.ToString() + "%') OR (materialAuthor Like '%" + searchTB4.Text.ToString() + "%') OR (materialPublisher Like '%" + searchTB4.Text.ToString() + "%') OR (materialType Like '%" + searchTB4.Text.ToString() + "%') OR (materialDescription Like '%" + searchTB4.Text.ToString() + "%') OR (materialCopyright Like '%" + searchTB4.Text.ToString() + "%') OR (materialAvailability Like '%" + searchTB4.Text.ToString() + "%')"


        SearchmaterialsDataSource.SelectCommand = searchword

    End Sub
End Class
