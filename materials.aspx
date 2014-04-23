<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="materials.aspx.vb" Inherits="materials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2> ICPL Materials </h2>

    <p> Enter Search:
        <asp:TextBox ID="searchTB2" runat="server" Width="245px"></asp:TextBox>
&nbsp;
        <asp:Button ID="searchButton2" runat="server" Text="Search" />
    &nbsp;&nbsp;
        <asp:Button ID="clearButtom" runat="server" Text="Clear" Width="61px" />
    </p>
    <p> 
        <asp:GridView ID="GridView1" runat="server" Height="101px" Width="407px">
        </asp:GridView>
    </p>
    <p> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </p>
</asp:Content>

