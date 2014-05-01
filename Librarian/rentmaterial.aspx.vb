Imports System.Data.SqlClient
Partial Class Librarian_rentmaterial
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        userNameTextBox.Focus()

    End Sub

    Protected Sub rentMateraialButton_Click(sender As Object, e As EventArgs) Handles rentMateraialButton.Click

        Dim strMaterialID As Integer = materialIDTextBox.Text
        Dim strUserName As String = userNameTextBox.Text()
        Dim RentDate As DateTime = DateTime.Now
        Dim DateDueBack As DateTime = DateTime.Now.AddDays(30)




        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_materials").ConnectionString)


        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand


        sqlCmd.Connection = sqlConn
        sqlCmd.CommandText = "sp_SLPL_RentMaterial"
        sqlCmd.CommandType = Data.CommandType.StoredProcedure


        sqlCmd.Parameters.Add(New SqlParameter("@UserName", strUserName))
        sqlCmd.Parameters.Add(New SqlParameter("@materialID", strMaterialID))
        sqlCmd.Parameters.Add(New SqlParameter("@RentDate", RentDate))
        sqlCmd.Parameters.Add(New SqlParameter("@DateDueBack", DateDueBack))
        sqlConn.Open()
        sqlCmd.ExecuteNonQuery()
        sqlConn.Close()


        Response.Redirect("viewallrentals.aspx")


    End Sub

End Class
