<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="materialdetails.aspx.vb" Inherits="materialdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2> Material Details </h2>
    <p> 
        <asp:SqlDataSource ID="MaterialDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" SelectCommand="SELECT [MaterialID], [Type], [CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [Description], [Availability] FROM [DatabaseMaterial] WHERE ([MaterialID] = @MaterialID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaterialID" QueryStringField="MaterialID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p> 
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MaterialID" DataSourceID="MaterialDataSource1" Height="85px" Width="335px">
            <Fields>
                <asp:BoundField DataField="MaterialID" HeaderText="Material ID" InsertVisible="False" ReadOnly="True" SortExpression="MaterialID" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="CallNumber" HeaderText="Call Number" SortExpression="CallNumber" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                <asp:BoundField DataField="Copyright" HeaderText="Copyright" SortExpression="Copyright" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
            </Fields>
        </asp:DetailsView>
    </p>
    <p> 
        <asp:LinkButton ID="LinkButton1" runat="server">Back to Search</asp:LinkButton>
    </p>


</asp:Content>

