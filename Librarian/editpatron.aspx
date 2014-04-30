<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="editpatron.aspx.vb" Inherits="Librarian_editpatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2> Edit / Update Member Information </h2>
    <p> 
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="PatronDataSource2" Height="50px" Width="326px">
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="FirstName" HeaderText="First" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last" SortExpression="LastName" />
                <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" SortExpression="Birthdate" />
                <asp:BoundField DataField="Address1" HeaderText="Address 1" SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address 2" SortExpression="Address2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="PrimaryEmail" HeaderText="Primary Email" SortExpression="PrimaryEmail" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="PhoneNumbe1" HeaderText="Cell Phone" SortExpression="PhoneNumbe1" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    </p>
    <p> 
        <asp:SqlDataSource ID="PatronDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" DeleteCommand="DELETE FROM [DatabaseMembers] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DatabaseMembers] ([FirstName], [LastName], [Birthdate], [Address1], [Address2], [City], [State], [PrimaryEmail], [PhoneNumbe1], [PhoneNumber], [Zip]) VALUES (@FirstName, @LastName, @Birthdate, @Address1, @Address2, @City, @State, @PrimaryEmail, @PhoneNumbe1, @PhoneNumber, @Zip)" SelectCommand="SELECT [ID], [FirstName], [LastName], [Birthdate], [Address1], [Address2], [City], [State], [PrimaryEmail], [PhoneNumbe1], [PhoneNumber], [Zip] FROM [DatabaseMembers] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [DatabaseMembers] SET [FirstName] = @FirstName, [LastName] = @LastName, [Birthdate] = @Birthdate, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [PrimaryEmail] = @PrimaryEmail, [PhoneNumbe1] = @PhoneNumbe1, [PhoneNumber] = @PhoneNumber, [Zip] = @Zip WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Birthdate" Type="DateTime" />
                <asp:Parameter Name="Address1" Type="String" />
                <asp:Parameter Name="Address2" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="PrimaryEmail" Type="String" />
                <asp:Parameter Name="PhoneNumbe1" Type="Double" />
                <asp:Parameter Name="PhoneNumber" Type="Double" />
                <asp:Parameter Name="Zip" Type="Double" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Birthdate" Type="DateTime" />
                <asp:Parameter Name="Address1" Type="String" />
                <asp:Parameter Name="Address2" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="PrimaryEmail" Type="String" />
                <asp:Parameter Name="PhoneNumbe1" Type="Double" />
                <asp:Parameter Name="PhoneNumber" Type="Double" />
                <asp:Parameter Name="Zip" Type="Double" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p> &nbsp;</p>

</asp:Content>

