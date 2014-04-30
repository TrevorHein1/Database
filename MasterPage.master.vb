
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        DateLabel.Text = Format(Date.Now, "MM/dd/yyyy")

    End Sub

    Protected Sub searchButton_Click(sender As Object, e As EventArgs) Handles searchButton.Click

        'redirect textbox's value to searchResults.aspx page
        Response.Redirect("~/searchbarmaster.aspx?searchquery=" + Server.UrlEncode(searchTB.Text))

    End Sub
End Class

