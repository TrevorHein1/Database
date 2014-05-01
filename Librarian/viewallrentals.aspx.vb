
Partial Class Librarian_viewallrentals
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound

        If e.Row.RowType = DataControlRowType.DataRow Then
            If e.Row.Cells(3).Text = "No" Then
                e.Row.Cells(3).Text = ""
            End If

            If e.Row.Cells(3).Text = "Damaged" Then
                e.Row.Cells(3).Text = ""
            End If

        End If

    End Sub

End Class
