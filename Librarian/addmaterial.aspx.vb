
Partial Class Librarian_addmaterial
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted

        Response.Redirect("~/Librarian/searchmaterials.aspx")

    End Sub

End Class
