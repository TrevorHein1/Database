Imports System.Data.SqlClient
Partial Class Librarian_returnmaterial
    Inherits System.Web.UI.Page


    Protected Sub returnMateraialButton_Click(sender As Object, e As EventArgs) Handles returnMateraialButton.Click


        Dim strmaterialId As String = materialIDTextBox.Text

        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_materials").ConnectionString)

        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand

        sqlCmd.Connection = sqlConn
        sqlCmd.CommandText = "sp_SLPL_MaterialReturn"
        sqlCmd.CommandType = Data.CommandType.StoredProcedure

        sqlCmd.Parameters.Add(New SqlParameter("@materialID", strmaterialId))

        sqlConn.Open()
        sqlCmd.ExecuteNonQuery()
        sqlConn.Close()

        Response.Redirect("viewallrentals.aspx")

    End Sub

End Class
