<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="checkout.aspx.vb" Inherits="Librarian_checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="check">

    <h2> Check Out Material </h2>

        <br />

    <p> Username :
        <asp:TextBox ID="usernameTB" runat="server" Width="221px"></asp:TextBox>
    </p>
    <p> Material ID :
        <asp:TextBox ID="MaterialIDTB1" runat="server" Width="210px"></asp:TextBox>
    </p>
        <br />
    <p> 
        <asp:Button ID="checkoutButton" runat="server" BackColor="#FFCC00" Text="Check Out" Width="182px" />
    </p>
    
    </div>

</asp:Content>

