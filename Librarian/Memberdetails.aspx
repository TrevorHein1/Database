<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Memberdetails.aspx.vb" Inherits="Librarian_Memberdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <link rel="stylesheet" type="text/css" href="./StyleSheettables.css" />

    <h2>Member Details</h2>

    <div id="memberdetails">

    <asp:FormView ID="FormView1" runat="server" CssClass="form-view" AlternatingRowStyle-CssClass="alternate" RowStyle-CssClass="row" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Width="227px">
        
        <EditItemTemplate>
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:DropDownList ID="ddlZip" runat="server" DataSourceID= "SqlDataSource2" 
                DataTextField="PostalCode" DataValueField="PostalCode" SelectedValue='<%# Bind("State")%>'>
            </asp:DropDownList>
            <br />
            Zip:
            <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
            <br />
            CellPhone:
            <asp:TextBox ID="CellPhoneTextBox" runat="server" Text='<%# Bind("CellPhone") %>' />
            <br />
            HomePhone:
            <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            BirthDate:
            <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
            <br />
            Address1:
            <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' />
            <br />
            Address2:
            <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Enabled="False" Text='<%# Bind("UserName") %>' />
            <br />
            RoleName:
            <asp:TextBox ID="RoleNameTextBox" runat="server" Enabled="False" Text='<%# Bind("RoleName") %>' />
            <br />
            UserID:
            <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>"
                SelectCommand="SELECT [PostalCode] FROM [SLPL_PostalCode]">
            </asp:SqlDataSource>
            

        </EditItemTemplate>

        <InsertItemTemplate>
           
        </InsertItemTemplate>

        <ItemTemplate>
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
            <br />
            Zip:
            <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
            <br />
            CellPhone:
            <asp:Label ID="CellPhoneLabel" runat="server" Text='<%# Bind("CellPhone") %>' />
            <br />
            HomePhone:
            <asp:Label ID="HomePhoneLabel" runat="server" Text='<%# Bind("HomePhone") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            BirthDate:
            <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Bind("BirthDate") %>' />
            <br />
            Address1:
            <asp:Label ID="Address1Label" runat="server" Text='<%# Bind("Address1") %>' />
            <br />
            Address2:
            <asp:Label ID="Address2Label" runat="server" Text='<%# Bind("Address2") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            RoleName:
            <asp:Label ID="RoleNameLabel" runat="server" Text='<%# Bind("RoleName") %>' />
            <br />
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />

            <asp:Button ID="EditButton" runat="server" CausesValidation="false" CommandName="Edit" Text="Edit" />
            &nbsp;
            <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClick="DeleteButton_Click" OnClientClick="return confirm ('Are you sure you want to delete this customer record?')" />
            <br />
            <br />
            <asp:GridView ID="GridView" runat="server" CssClass="grid-view1" AlternatingRowStyle-CssClass="alternate" RowStyle-CssClass="row" AutoGenerateColumns="False" DataKeyNames="materialID" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="materialID" HeaderText="&nbsp;ID&nbsp;" InsertVisible="False" ReadOnly="True" SortExpression="materialID" />
                    <asp:BoundField DataField="materialType" HeaderText="&nbsp;Type&nbsp;" SortExpression="materialType" />
                    <asp:BoundField DataField="materialCallNumber" HeaderText="&nbsp;Call Number&nbsp;" SortExpression="materialCallNumber" />
                    <asp:BoundField DataField="materialTitle" HeaderText="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="materialTitle" />
                    <asp:BoundField DataField="materialAuthor" HeaderText="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="materialAuthor" />
                    <asp:BoundField DataField="materialISBN" HeaderText="&nbsp;ISBN&nbsp;" SortExpression="materialISBN" />
                    <asp:BoundField DataField="DateDueBack" HeaderText="Date Due Back" SortExpression="DateDueBack" />
                </Columns>
            </asp:GridView>
            <br />

        </ItemTemplate>
    
    
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" SelectCommand="SELECT materials.materialID, materials.materialType, materials.materialCallNumber, materials.materialTitle, materials.materialAuthor, materials.materialISBN, SLPL_Rentals.DateDueBack FROM SLPL_Rentals INNER JOIN materials ON SLPL_Rentals.materialID = materials.materialID WHERE (SLPL_Rentals.UserID = @UserID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="UserID" QueryStringField="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <asp:Label ID="lbl_DeletedMember" runat="server" Text=""></asp:Label>
    <br />


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" 

        DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserID] =@UserID"

        SelectCommand="SELECT SLPL_UserProfile.FirstName, SLPL_UserProfile.LastName, SLPL_UserProfile.City, SLPL_UserProfile.State, SLPL_UserProfile.Zip, SLPL_UserProfile.CellPhone, SLPL_UserProfile.HomePhone, SLPL_UserProfile.Email, SLPL_UserProfile.BirthDate, SLPL_UserProfile.Address1, SLPL_UserProfile.Address2, aspnet_Users.UserName, aspnet_Roles.RoleName, SLPL_UserProfile.UserID FROM SLPL_UserProfile INNER JOIN aspnet_Users ON SLPL_UserProfile.UserID = aspnet_Users.UserId INNER JOIN aspnet_Roles ON aspnet_Users.ApplicationId = aspnet_Roles.ApplicationId WHERE (SLPL_UserProfile.UserID= @UserID)"

        UpdateCommand="UPDATE [SLPL_UserProfile] SET [FirstName] = @FirstName, [LastName] = @LastName, [City] = @City, [State] = @State, [Zip] = @Zip, [CellPhone] = @CellPhone, [HomePhone] = @HomePhone, [Email] = @Email, [BirthDate] = @BirthDate, [Address1] = @Address1, [Address2] = @Address2 WHERE [UserID] = @UserID" >


        <DeleteParameters>
           <asp:Parameter Name="UserID" Type="Object" />
        </DeleteParameters>

        <SelectParameters>
             <asp:QueryStringParameter Name="UserID" QueryStringField="UserID" />
        </SelectParameters>

        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Zip" Type="String" />
            <asp:Parameter Name="CellPhone" Type="String" />
            <asp:Parameter Name="HomePhone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="BirthDate" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="State" />
            <asp:Parameter Name="UserID" />
        </UpdateParameters>

    </asp:SqlDataSource>

        <div id="backbutton">

        <asp:Button ID="backBT2" runat="server" Text="Back" Width="73px" />
        </div>
        
    </div>
        
</asp:Content>

