<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="hours.aspx.vb" Inherits="hours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       

    <div id="hours">
        <h2>Hours</h2>
        <p>Monday: 10:00 a.m. to 9:00 p.m.</p>
        <p>Tuesday: 10:00 a.m. to 9:00 p.m.</p>
        <p>Wednesday: 10:00 a.m. to 9:00 p.m.</p>
        <p>Thursday: 10:00 a.m. to 9:00 p.m.</p>
        <p>Friday: 10:00 a.m. to 8:00 p.m.</p>
        <p>Saturday: 10:00 a.m. to 6:00 p.m</p>
        <p>Sunday: 12:00 p.m. to 5:00 p.m.</p>
        </div>
    <br />
    
    <div id="location">
        <h2> Location</h2>
        <p>Address: 555 S. Gilbert St. Iowa City, IA 52240</p>

        <div id="map"><img src="./Images/map.png" alt="map" title="map"/></div>
        
    </div>

</asp:Content>

