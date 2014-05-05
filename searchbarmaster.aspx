<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="searchbarmaster.aspx.vb" Inherits="searchbarmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <link rel="stylesheet" type="text/css" href="./StyleSheettables.css" />

    <h2>Search Results:</h2>

    <div id="search1">


     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" 
     SelectCommand="SELECT * FROM [DB_Materials] WHERE ([materialType] LIKE '%' + @searchterm + '%') 
         OR ([materialCallNumber] = @searchterm) 
         OR ([materialTitle] LIKE '%' + @searchterm + '%') 
         OR ([materialCopyright] = @searchterm) 
         OR ([materialISBN] = @searchterm) 
         OR ([materialAuthor] LIKE '%' + @searchterm + '%') 
         OR ([materialPublisher] LIKE '%' + @searchterm + '%') 
         OR ([materialDescription] LIKE '%' + @searchterm + '%')" >
    
        <SelectParameters>
            <asp:QueryStringParameter Name="searchterm" QueryStringField="searchquery" Type="String" />
        </SelectParameters>

         </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" AlternatingRowStyle-CssClass="alternate" RowStyle-CssClass="row" AutoGenerateColumns="False" DataKeyNames="materialID" DataSourceID="SqlDataSource1" Height="150px" PageSize="5" Width="743px" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="materialID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="materialID" />
            <asp:BoundField DataField="materialType" HeaderText="Type" SortExpression="materialType" />
            <asp:BoundField DataField="materialCallNumber" HeaderText="Call Number" SortExpression="materialCallNumber" />
            <asp:BoundField DataField="materialTitle" HeaderText="Title" SortExpression="materialTitle" />
            <asp:BoundField DataField="materialCopyright" HeaderText="Copyright" SortExpression="materialCopyright" />
            <asp:BoundField DataField="materialISBN" HeaderText="ISBN" SortExpression="materialISBN" />
            <asp:BoundField DataField="materialAuthor" HeaderText="Author" SortExpression="materialAuthor" />
            <asp:BoundField DataField="materialAvailability" HeaderText="Availability" SortExpression="materialAvailability" />
            <asp:BoundField DataField="materialPublisher" HeaderText="Publisher" SortExpression="materialPublisher" />
        </Columns>
    </asp:GridView>

    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="backBT4" runat="server" Text="Back" Width="92px" />

    
        <br />
        <br />
        
        
    
        </div>


    </asp:Content>

