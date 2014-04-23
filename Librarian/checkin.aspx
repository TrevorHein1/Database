<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="checkin.aspx.vb" Inherits="Librarian_checkin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="check">

    <h2> Check In Material </h2>

        <br />

    <p> Material ID :
        <asp:TextBox ID="materialIDTB2" runat="server" Width="177px"></asp:TextBox>
    </p>
        <br />
    <p> 
        <asp:Button ID="checkInButton" runat="server" BackColor="#FFCC00" Text="Check In" Width="203px" />
    </p>

    </div>

</asp:Content>

