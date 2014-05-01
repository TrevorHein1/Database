Imports System.Data.SqlClient

Partial Class Librarian_addpatron
    Inherits System.Web.UI.Page

    Protected Sub CreateUserWizard1_ActiveStepChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.ActiveStepChanged

        ' have we just reached the Complete step?
        If CreateUserWizard1.ActiveStep.Title = "Complete" Then
            Dim UserSettings As WizardStep = CType(CreateUserWizard1.FindControl("UserProfile"), WizardStep)

            ' Programmatically reference the TextBox controls

            Dim FirstName As TextBox = CType(UserSettings.FindControl("tb_FirstName"), TextBox)
            Dim LastName As TextBox = CType(UserSettings.FindControl("tb_LastName"), TextBox)
            Dim Birthdate As TextBox = CType(UserSettings.FindControl("tb_Birthdate"), TextBox)
            Dim Address1 As TextBox = CType(UserSettings.FindControl("tb_Address1"), TextBox)
            Dim Address2 As TextBox = CType(UserSettings.FindControl("tb_Address2"), TextBox)
            Dim City As TextBox = CType(UserSettings.FindControl("tb_City"), TextBox)
            Dim strPostalCode As String = ddl_State.SelectedItem.Text
            Dim Zip As TextBox = CType(UserSettings.FindControl("tb_Zip"), TextBox)
            Dim CellPhone As TextBox = CType(UserSettings.FindControl("tb_CellPhone"), TextBox)
            Dim HomePhone As TextBox = CType(UserSettings.FindControl("tb_HomePhone"), TextBox)
            Dim Email As TextBox = CType(UserSettings.FindControl("tb_Email"), TextBox)

            ' Update the UserProfiles record for this year
            ' Get the UserID of the just-added user
            Dim newUser As MembershipUser = Membership.GetUser(CreateUserWizard1.UserName)
            Dim newUserID As Guid = CType(newUser.ProviderUserKey, Guid)

            ' Add the newly create user to the "Patron" role
            Roles.AddUserToRole(newUser.UserName, "patron")

            ' Insert a new record into UserProfiles
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("cs_materials").ConnectionString
            Dim updateSql As String = "INSERT INTO [SLPL_UserProfile] ([UserID], [FirstName], [LastName], [City], [State], [Zip], [CellPhone], [HomePhone], [Email], [BirthDate], [Address1], [Address2]) VALUES (@UserID, @FirstName, @LastName, @City, @State, @Zip, @CellPhone, @HomePhone, @Email, @BirthDate, @Address1, @Address2)"

            Using myConnection As New SqlConnection(connectionString)
                myConnection.Open()
                Dim myCommand As New SqlCommand(updateSql, myConnection)
                myCommand.Parameters.AddWithValue("@UserID", newUserID)
                myCommand.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim())
                myCommand.Parameters.AddWithValue("@LastName", LastName.Text.Trim())
                myCommand.Parameters.AddWithValue("@City", City.Text.Trim())
                myCommand.Parameters.Add(New SqlParameter("@State", strPostalCode))
                myCommand.Parameters.AddWithValue("@Zip", Zip.Text.Trim())
                myCommand.Parameters.AddWithValue("@CellPhone", CellPhone.Text.Trim())
                myCommand.Parameters.AddWithValue("@HomePhone", HomePhone.Text.Trim())
                myCommand.Parameters.AddWithValue("@Email", Email.Text.Trim())
                myCommand.Parameters.AddWithValue("@BirthDate", Birthdate.Text.Trim())
                myCommand.Parameters.AddWithValue("@Address1", Address1.Text.Trim())
                myCommand.Parameters.AddWithValue("@Address2", Address2.Text.Trim())
                myCommand.ExecuteNonQuery()
                myConnection.Close()
            End Using

        End If

    End Sub

End Class
