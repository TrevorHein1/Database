<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="searchmaterials.aspx.vb" Inherits="Librarian_searchmaterials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" type="text/css" href="./StyleSheettables.css" />

    <h2> Search Materials </h2>

    <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Search:
        <asp:TextBox ID="searchTB4" runat="server" Width="245px"></asp:TextBox>
       &nbsp;
        <asp:Button ID="searchButton3" runat="server" Text="Search" />
    &nbsp;&nbsp;
        <asp:Button ID="clearButton2" runat="server" Text="Clear" Width="61px" />
    
       <p> 
           &nbsp;</p>

    <% If Not IsPostBack Then%><% Else%><%End If%>

    <p> 
        <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" AlternatingRowStyle-CssClass="alternate" RowStyle-CssClass="row" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="materialID" DataSourceID="SearchmaterialsDataSource" Height="150px" PageSize="8" Width="833px">
            <Columns>
                <asp:BoundField DataField="materialType" HeaderText="Type" SortExpression="materialType" />
                <asp:BoundField DataField="materialTitle" HeaderText="Title" SortExpression="materialTitle" />
                <asp:BoundField DataField="materialAuthor" HeaderText="Author" SortExpression="materialAuthor" />
                <asp:BoundField DataField="materialAvailability" HeaderText="Availability" SortExpression="materialAvailability" />
                <asp:HyperLinkField DataNavigateUrlFields="materialID" DataNavigateUrlFormatString="materialdetails.aspx?materialID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
    </p>
    <p> 
        <asp:SqlDataSource ID="SearchmaterialsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" 
            SelectCommand="SELECT [materialID], [materialType], [materialCallNumber], [materialTitle], [materialAuthor], [materialPublisher], [materialCopyright], [materialISBN], [materialAvailability], [materialDescription] FROM [DB_Materials]"></asp:SqlDataSource>
    </p>

</asp:Content>

