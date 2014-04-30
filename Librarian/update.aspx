<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="update.aspx.vb" Inherits="Librarian_addmaterials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2> Search Materials </h2>

   <p> Enter Search:
        <asp:TextBox ID="searchTB4" runat="server" Width="245px"></asp:TextBox>
&nbsp;
        <asp:Button ID="searchButton3" runat="server" Text="Search" />
    &nbsp;&nbsp;
        <asp:Button ID="clearButton2" runat="server" Text="Clear" Width="61px" />
    
       <p> 
           &nbsp;</p>

    <% If Not IsPostBack Then%><% Else%><%End If%>

    </asp:Content>

