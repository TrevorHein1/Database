<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewallrentals.aspx.vb" Inherits="Librarian_viewallrentals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:cs_materials %>"
        SelectCommand="SELECT [UserID], [RentalID], [materialID], [RentDate], [DateDueBack] FROM [SLPL_Rentals]" >
    </asp:SqlDataSource>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="RentalID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="RentalID" HeaderText="RentalID" 
                SortExpression="RentalID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" 
                SortExpression="UserID" />
            <asp:BoundField DataField="materialID" HeaderText="materialID" 
                SortExpression="materialID" />
            <asp:BoundField DataField="RentDate" HeaderText="RentDate" 
                SortExpression="RentDate" />
            <asp:BoundField DataField="DateDueBack" HeaderText="DateDueBack" SortExpression="DateDueBack" />
        </Columns>
    </asp:GridView>

</asp:Content>

