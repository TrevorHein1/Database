<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="editmember.aspx.vb" Inherits="Librarian_editpatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2> Edit / Update Member Information </h2>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="memberDataSource1">
            <EditItemTemplate>
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                Birthdate:
                <asp:TextBox ID="BirthdateTextBox" runat="server" Text='<%# Bind("Birthdate") %>' />
                <br />
                PrimaryEmail:
                <asp:TextBox ID="PrimaryEmailTextBox" runat="server" Text='<%# Bind("PrimaryEmail") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                Birthdate:
                <asp:TextBox ID="BirthdateTextBox" runat="server" Text='<%# Bind("Birthdate") %>' />
                <br />
                PrimaryEmail:
                <asp:TextBox ID="PrimaryEmailTextBox" runat="server" Text='<%# Bind("PrimaryEmail") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                Birthdate:
                <asp:Label ID="BirthdateLabel" runat="server" Text='<%# Bind("Birthdate") %>' />
                <br />
                PrimaryEmail:
                <asp:Label ID="PrimaryEmailLabel" runat="server" Text='<%# Bind("PrimaryEmail") %>' />
                <br />
    </p>
    <p> 
        <asp:Button ID="editBT" runat="server" Text="Edit" Width="66px" OnClick="editBT_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="deleteBT" runat="server" Text="Delete" onclick="deleteBT_Click" OnClientClick="return confirm ('Are you sure you want to Delete this member record?')"/>
    </p>
    <p> 
        <asp:SqlDataSource ID="memberDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" SelectCommand="SELECT ID, FirstName, LastName, Birthdate, PrimaryEmail FROM DatabaseMembers"></asp:SqlDataSource>
    </p>
    <p> &nbsp;</p>

    </ItemTemplate>

            </asp:FormView>

</asp:Content>

