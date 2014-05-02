Imports System.Data.SqlClient
Imports System.Web.Security
Imports System.Web.Security.Roles
Imports System.Web.Security.Membership
Imports System.Data
Partial Class Librarian_Memberdetails
    Inherits System.Web.UI.Page

    Protected Sub DeleteButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim selUser As Label = CType(FormView1.FindControl("UserNameLabel"), Label)

        If selUser IsNot Nothing Then
            Dim delUser As String = selUser.Text

            Membership.DeleteUser(selUser.Text)
        End If
    End Sub



    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim delMember As String = e.Values("FirstName").ToString()

        lbl_DeletedMember.Text = "The record <span class=deletedrecordhighlight> " & delMember & "</span> has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=viewallmembers.aspx")
        ' Response.Redirect("viewallmembers.aspx")

    End Sub


    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.Redirect("viewallmembers.aspx")

    End Sub

    Protected Sub backBT2_Click(sender As Object, e As EventArgs) Handles backBT2.Click

        Response.Redirect("viewallmembers.aspx")

    End Sub
End Class
