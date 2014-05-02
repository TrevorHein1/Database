<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="rentmaterial.aspx.vb" Inherits="Librarian_rentmaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Check Out Material</h2>

    <br />

    <div id="check">
   
<p>
    *Username:&nbsp;
    <asp:TextBox ID="userNameTextBox" runat="server" Width="140px"></asp:TextBox>
</p>

<p> *Material ID:&nbsp;
    <asp:TextBox ID="materialIDTextBox" runat="server" Width="141px"></asp:TextBox>
</p>
<p> 
    <asp:Button ID="rentMateraialButton" runat="server" Text="Rent Material" BackColor="#FFCC00" Font-Bold="True" Height="26px" Width="148px" />
</p>

</div>


</asp:Content>

