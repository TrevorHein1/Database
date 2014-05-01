<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="returnmaterial.aspx.vb" Inherits="Librarian_returnmaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <p> *Material ID:
    <asp:TextBox ID="materialIDTextBox" runat="server" Width="100px"></asp:TextBox>
</p>
<p> 
    <asp:Button ID="returnMateraialButton" runat="server" Text="Return Material" />
</p>

</asp:Content>

