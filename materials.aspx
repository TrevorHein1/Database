<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="materials.aspx.vb" Inherits="materials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" type="text/css" href="./StyleSheettables.css" />

    <h2> ICPL Materials </h2>

    <p> Enter Search:
        <asp:TextBox ID="searchTB2" runat="server" Width="245px"></asp:TextBox>
&nbsp;
        <asp:Button ID="searchButton2" runat="server" Text="Search" />
    &nbsp;&nbsp;
        </p>
    <p> 
     
        <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" AlternatingRowStyle-CssClass="alternate" RowStyle-CssClass="row" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="materialID" DataSourceID="SearchmaterialsDataSource" Height="150px" PageSize="8" Width="911px">
<AlternatingRowStyle CssClass="alternate"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="materialID" HeaderText="ID" SortExpression="materialID" />
                <asp:BoundField DataField="materialType" HeaderText="Type" SortExpression="materialType" />
                <asp:BoundField DataField="materialTitle" HeaderText="Title" SortExpression="materialTitle" />
                <asp:BoundField DataField="materialAuthor" HeaderText="Author" SortExpression="materialAuthor" />
                <asp:BoundField DataField="materialAvailability" HeaderText="Availability" SortExpression="materialAvailability" />
                <asp:HyperLinkField DataNavigateUrlFields="materialID" DataNavigateUrlFormatString="materialdetails.aspx?materialID={0}" Text="Select" />
            </Columns>

<RowStyle CssClass="row"></RowStyle>
        </asp:GridView>
    </p>
    <p> 
        <asp:SqlDataSource ID="SearchmaterialsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" SelectCommand="SELECT [materialID], [materialType], [materialCallNumber], [materialTitle], [materialAuthor], [materialPublisher], [materialCopyright], [materialISBN], [materialAvailability], [materialDescription] FROM [DB_Materials]"></asp:SqlDataSource>
    </p>


</asp:Content>

