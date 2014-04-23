<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="contact">

    <h2> Contact Us</h2>
    <p> Phone: 555-555-5555&nbsp;&nbsp;&nbsp; Email: <a href="mailto:contact@ICPL.com">contact@ICPL.com</a>&nbsp;&nbsp;&nbsp; Address: 1234 Iowa City Ave. Iowa City, IA 52240</p>
    
    <br />

    <p> Email : </p>
    
   <p>
    <asp:TextBox ID="EmailTB" runat="server" Width="281px" BorderColor="White"></asp:TextBox>
    </p>

    <p> Message:</p>
    <p>
        <asp:TextBox ID="MessageTB" runat="server" Height="96px" MaxLength="500" TextMode="MultiLine" Width="285px" BackColor="White"></asp:TextBox>
    </p>
    <p>
        
        <br />
        <asp:Button ID="sendButton" runat="server" Text="Send" Width="156px" BackColor="#FFCC00" />
    </p>
    <p>
        
        <asp:Label ID="confirmsent" runat="server"></asp:Label>
    </p>
</div>

</asp:Content>

