<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewallmembers.aspx.vb" Inherits="Librarian_viewpatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" type="text/css" href="./StyleSheettables.css" />


    <h2> ICPL Members </h2>

    <div id="allmembers">

    <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search Members:
        <asp:TextBox ID="searchTB3" runat="server" Width="189px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="searchButton3" runat="server" Text="Search" Width="102px" />
    </p>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" SelectCommand="SELECT [FirstName], [LastName], [City], [State], [Zip], [CellPhone], [HomePhone], [Email], [BirthDate], [Address1], [Address2], [UserID] FROM [SLPL_UserProfile]"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" AlternatingRowStyle-CssClass="alternate" RowStyle-CssClass="row" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Width="679px">
<AlternatingRowStyle CssClass="alternate"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            <asp:HyperLinkField DataNavigateUrlFields="UserID" DataNavigateUrlFormatString="Memberdetails.aspx?UserID={0}" Text="Select" />
        </Columns>

<RowStyle CssClass="row"></RowStyle>
    </asp:GridView>

        </div>

</asp:Content>

