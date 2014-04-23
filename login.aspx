<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="login">
    
        <h2> User Login </h2>

        <p>
             
        <asp:Login ID="Login1" runat="server" Height="198px" Width="276px">
        </asp:Login>

        </p>
    
    </div>


</asp:Content>

