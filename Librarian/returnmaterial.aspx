<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="returnmaterial.aspx.vb" Inherits="Librarian_returnmaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Check In Material</h2>

    <br />

    <div id="check">

 <p> *Material ID:&nbsp;
    <asp:TextBox ID="materialIDTextBox" runat="server" Width="146px"></asp:TextBox>
</p>
<p> 
    <asp:Button ID="returnMateraialButton" runat="server" Text="Return Material" BackColor="#FFCC00" Height="35px" Width="167px" />
</p>

    </div>

</asp:Content>

