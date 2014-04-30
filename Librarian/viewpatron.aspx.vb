
Partial Class Librarian_viewpatron
    Inherits System.Web.UI.Page

    Protected Sub searchButton3_Click(sender As Object, e As EventArgs) Handles searchButton3.Click

        Dim searchword As String


        searchword = "Select * From DatabaseMembers where (ID Like '%" + searchTB3.Text.ToString() + "%') OR (FirstName Like '%" + searchTB3.Text.ToString() + "%') OR (LastName Like '%" + searchTB3.Text.ToString() + "%') OR (Birthdate Like '%" + searchTB3.Text.ToString() + "%')"


        PatronDataSource1.SelectCommand = searchword


    End Sub
End Class
