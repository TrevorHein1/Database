<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="rentmaterial.aspx.vb" Inherits="Librarian_rentmaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
<p>
    *Username:
    <asp:TextBox ID="userNameTextBox" runat="server" Width="100px"></asp:TextBox>
</p>

<p> *Material ID:
    <asp:TextBox ID="materialIDTextBox" runat="server" Width="100px"></asp:TextBox>
</p>
<p> 
    <asp:Button ID="rentMateraialButton" runat="server" Text="Rent Material" />
</p>


</asp:Content>

