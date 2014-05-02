
Partial Class Librarian_materialdetails
    Inherits System.Web.UI.Page


    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim deletedMaterial As String = e.Values("materialTitle").ToString()

        DeletedMaterialLabel.Text = "The record <span class=deletedrecordhighlight> " & deletedMaterial & "</span> has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=searchmaterials.aspx")

    End Sub




    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.Redirect("~/Librarian/searchmaterials.aspx")


    End Sub

    Protected Sub backBT1_Click(sender As Object, e As EventArgs) Handles backBT1.Click

        Response.Redirect("searchmaterials.aspx")

    End Sub
End Class
