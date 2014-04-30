<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewmembers.aspx.vb" Inherits="Librarian_viewpatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2> ICPL Members </h2>
    <p> Search Members:
        <asp:TextBox ID="searchTB3" runat="server" Width="189px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="searchButton3" runat="server" Text="Search" Width="102px" />
    </p>
    <p> 
        <asp:SqlDataSource ID="PatronDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" SelectCommand="SELECT [ID], [FirstName], [LastName], [Birthdate] FROM [DatabaseMembers]"></asp:SqlDataSource>
    </p>
    <p> 
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="PatronDataSource1" Width="684px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Birthdate" DataFormatString="{0:d}" HeaderText="Birthdate" SortExpression="Birthdate" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="editmember.aspx?ID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
    </p>






</asp:Content>

