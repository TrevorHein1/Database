<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="addmaterial.aspx.vb" Inherits="Librarian_addmaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" 
        DeleteCommand="DELETE FROM [DB_Materials] WHERE [materialID] = @materialID" 
        InsertCommand="INSERT INTO [DB_Materials] ([materialType], [materialCallNumber], [materialTitle], [materialAuthor], [materialPublisher], [materialCopyright], [materialISBN], [materialDescription], [materialAvailability]) VALUES (@materialType, @materialCallNumber, @materialTitle, @materialAuthor, @materialPublisher, @materialCopyright, @materialISBN, @materialDescription, @materialAvailability)" 
         SelectCommand="SELECT [materialID], [materialType], [materialCallNumber], [materialTitle], [materialAuthor], [materialPublisher], [materialCopyright], [materialISBN], [materialDescription], [materialAvailability] FROM [DB_Materials]" 
         UpdateCommand="UPDATE [DB_Materials] SET [materialType] = @materialType, [materialCallNumber] = @materialCallNumber, [materialTitle] = @materialTitle, [materialAuthor] = @materialAuthor, [materialPublisher] = @materialPublisher, [materialCopyright] = @materialCopyright, [materialISBN] = @materialISBN, [materialDescription] = @materialDescription, [materialAvailability] = @materialAvailability WHERE [materialID] = @materialID">
        
        <DeleteParameters>
            <asp:Parameter Name="materialID" Type="Int32" />
        </DeleteParameters>
        
        <InsertParameters>
            <asp:Parameter Name="materialType" Type="String" />
            <asp:Parameter Name="materialCallNumber" Type="String" />
            <asp:Parameter Name="materialTitle" Type="String" />
            <asp:Parameter Name="materialAuthor" Type="String" />
            <asp:Parameter Name="materialPublisher" Type="String" />
            <asp:Parameter Name="materialCopyright" Type="String" />
            <asp:Parameter Name="materialISBN" Type="String" />
            <asp:Parameter Name="materialDescription" Type="String" />
            <asp:Parameter Name="materialAvailability" Type="String" />
        </InsertParameters>
        
        <UpdateParameters>
            <asp:Parameter Name="materialType" Type="String" />
            <asp:Parameter Name="materialCallNumber" Type="String" />
            <asp:Parameter Name="materialTitle" Type="String" />
            <asp:Parameter Name="materialAuthor" Type="String" />
            <asp:Parameter Name="materialPublisher" Type="String" />
            <asp:Parameter Name="materialCopyright" Type="String" />
            <asp:Parameter Name="materialISBN" Type="String" />
            <asp:Parameter Name="materialDescription" Type="String" />
            <asp:Parameter Name="materialAvailability" Type="String" />
            <asp:Parameter Name="materialID" Type="Int32" />
        </UpdateParameters>
   
         </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" 
        SelectCommand="SELECT [materialType] FROM [materialType]"></asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" 
        SelectCommand="SELECT [materialAvailability] FROM [SLPL_Avail]"></asp:SqlDataSource>
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="materialID" DataSourceID="SqlDataSource1" DefaultMode="Insert" >
        
        <EditItemTemplate>
           
        </EditItemTemplate>
        
        <InsertItemTemplate>
            
            <table>

                 <tr>
				    <td align="right"> Title: </td><td align="left"><asp:Textbox ID="materialTitleLabel" runat="server" Text='<%# Bind("materialTitle") %>' /></td>
			    </tr>

			    
                <tr>
				    <td align="right"> Author: </td><td align="left"><asp:Textbox ID="materialAuthorTextbox" runat="server" Text='<%# Bind("materialAuthor") %>' /></td>
			    </tr>

                <tr>
				    <td align="right"> Call Number: </td><td align="left"><asp:Textbox ID="materialCallNumberTextbox" runat="server" Text='<%# Bind("materialCallNumber") %>' /></td>
			    </tr>
            

                <tr>
				    <td align="right"> Copyright: </td><td align="left"><asp:Textbox ID="materialCopyrightTextbox" runat="server" Text='<%# Bind("materialCopyright") %>' /></td>
			    </tr>
            
                <tr>
				    <td align="right"> ISBN: </td><td align="left"><asp:Textbox ID="materialISBNTextbox" runat="server" Text='<%# Bind("materialISBN") %>' /></td>
			    </tr>


                <tr>
				    <td align="right"> Publisher: </td><td align="left"><asp:Textbox ID="materialPublisherTextbox" runat="server" Text='<%# Bind("materialPublisher") %>' /></td>
			    </tr>

                <tr>
				    <td align="right"> Description: </td><td align="left"><asp:Textbox ID="materialDescriptionTextbox" runat="server" Text='<%# Bind("materialDescription") %>' /></td>
			    </tr>

                <tr>
				     <td align="right"> Available: </td>
                     <td align="left">
                         <asp:DropDownList ID="ddl_MaterialAvail" runat="server" DataSourceID="SqlDataSource3"
                             DataTextField="materialAvailability" DataValueField="materialAvailability" SelectedValue='<%# Bind("materialAvailability")%>'>
                         </asp:DropDownList>
                     </td>
			    </tr>

                <tr>
				    <td align="right"> Material Type: </td>
                     <td align="left">
                         <asp:DropDownList ID="ddl_materialType" runat="server" DataSourceID="SqlDataSource2"
                             DataTextField="materialType" DataValueField="materialType" SelectedValue='<%# Bind("materialType") %>'>
                         </asp:DropDownList>
                     </td>
			    </tr>

            </table>

            <br />

             <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add New Item" />


            &nbsp; &nbsp;


			<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />


        </InsertItemTemplate>
        
        <ItemTemplate>
           
        </ItemTemplate>
    
    </asp:FormView>

</asp:Content>

