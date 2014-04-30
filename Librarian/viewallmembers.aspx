<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewallmembers.aspx.vb" Inherits="Librarian_viewpatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2> ICPL Members </h2>
    <p> Search Members:
        <asp:TextBox ID="searchTB3" runat="server" Width="189px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="searchButton3" runat="server" Text="Search" Width="102px" />
    </p>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" SelectCommand="SELECT [FirstName], [LastName], [City], [State], [Zip], [CellPhone], [HomePhone], [Email], [BirthDate], [Address1], [Address2], [UserID] FROM [SLPL_UserProfile]"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
            <asp:BoundField DataField="CellPhone" HeaderText="CellPhone" SortExpression="CellPhone" />
            <asp:BoundField DataField="HomePhone" HeaderText="HomePhone" SortExpression="HomePhone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
            <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
            <asp:HyperLinkField DataNavigateUrlFields="UserID" DataNavigateUrlFormatString="Memberdetails.aspx?UserID={0}" Text="Select" />
        </Columns>
    </asp:GridView>



</asp:Content>

