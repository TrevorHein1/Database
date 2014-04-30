﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="materials.aspx.vb" Inherits="materials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2> ICPL Materials </h2>

    <p> Enter Search:
        <asp:TextBox ID="searchTB2" runat="server" Width="245px"></asp:TextBox>
&nbsp;
        <asp:Button ID="searchButton2" runat="server" Text="Search" />
    &nbsp;&nbsp;
        <asp:Button ID="clearButton" runat="server" Text="Clear" Width="61px" />
    </p>
    <p> 
        <asp:GridView ID="GridView1" runat="server" Height="195px" Width="836px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaterialID" DataSourceID="SqlDataSource1" PageSize="15" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:HyperLinkField DataNavigateUrlFields="MaterialID" DataNavigateUrlFormatString="materialdetails.aspx?MaterialID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
    </p>
    <p> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" SelectCommand="SELECT [MaterialID], [Type], [CallNumber], [Title], [Author], [Copyright], [ISBN], [Publisher], [Availability], [Description] FROM [DatabaseMaterial]"></asp:SqlDataSource>
    </p>

    <% If Not IsPostBack Then%><% Else%><%End If%>

</asp:Content>

