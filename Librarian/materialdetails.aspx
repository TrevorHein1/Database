<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="materialdetails.aspx.vb" Inherits="Librarian_materialdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2> Material Details </h2>
        <asp:SqlDataSource ID="materialdetailsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" 
            SelectCommand="SELECT [materialID], [materialType], [materialCallNumber], [materialTitle], [materialAuthor], [materialPublisher], [materialCopyright], [materialISBN], [materialDescription], [materialAvailability] FROM [DB_Materials] WHERE ([materialID] = @materialID)" 
            DeleteCommand="DELETE FROM [DB_Materials] WHERE [materialID] = @materialID" 
            InsertCommand="INSERT INTO [DB_Materials] ([materialType], [materialCallNumber], [materialTitle], [materialAuthor], [materialPublisher], [materialCopyright], [materialISBN], [materialDescription], [materialAvailability]) VALUES (@materialType, @materialCallNumber, @materialTitle, @materialAuthor, @materialPublisher, @materialCopyright, @materialISBN, @materialDescription, @materialAvailability)" 
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
            
            <SelectParameters>
                <asp:QueryStringParameter Name="materialID" QueryStringField="materialID" Type="Int32" />
            </SelectParameters>
            
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" 
            SelectCommand="SELECT [materialType] FROM [materialType]">
        </asp:SqlDataSource>

         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" 
        SelectCommand="SELECT [materialAvailability] FROM [SLPL_Avail]"></asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:cs_materials %>" 
        SelectCommand="SELECT SLPL_UserProfile.UserID, SLPL_UserProfile.FirstName, SLPL_UserProfile.LastName, SLPL_UserProfile.City, SLPL_UserProfile.State, SLPL_UserProfile.CellPhone, SLPL_UserProfile.Email, SLPL_UserProfile.HomePhone FROM SLPL_Rentals INNER JOIN SLPL_UserProfile ON SLPL_Rentals.UserID = SLPL_UserProfile.UserID WHERE (SLPL_Rentals.materialID = @materialID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="materialID" QueryStringField="materialID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <br />
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="materialID" DataSourceID="materialdetailsDataSource">
        <EditItemTemplate>
            
            <table>
			    <tr>
				    <td align="right" > Material ID: </td><td align="left"><asp:Textbox ID="materialIDTextbox" runat="server" Enabled="false" Text='<%# Bind("materialID") %>' /></td>
			    </tr>
            
			    <tr>
				    <td align="right"> Call Number: </td><td align="left"><asp:Textbox ID="materialCallNumberTextbox" runat="server" Text='<%# Bind("materialCallNumber") %>' /></td>
			    </tr>
            
                <tr>
				    <td align="right"> Title: </td><td align="left"><asp:Textbox ID="materialTitleLabel" runat="server" Text='<%# Bind("materialTitle") %>' /></td>
			    </tr>
            
                <tr>
				    <td align="right"> Author: </td><td align="left"><asp:Textbox ID="materialAuthorTextbox" runat="server" Text='<%# Bind("materialAuthor") %>' /></td>
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
                    <td align="right"> Type: </td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_materialType" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="materialType" DataValueField="materialType" SelectedValue='<%# Bind("materialType")%>'>
                        </asp:DropDownList>
                     </td>
                </tr>
              
                <tr>
                    <td align="right">Available: </td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_MaterialAvail" runat="server" DataSourceID="SqlDataSource3"
                             DataTextField="materialAvailability" DataValueField="materialAvailability" 
                            SelectedValue='<%# Bind("materialAvailability")%>'>
                        </asp:DropDownList>
                    </td>
                </tr>
                

             

                <tr>
				    <td align="right"> Description: </td><td align="left"><asp:Textbox ID="materialDescriptionTextbox" runat="server" Text='<%# Bind("materialDescription") %>' /></td>
			    </tr>

            </table>

            <br />

            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            
            &nbsp; &nbsp;
            
            <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="false" CommandName="Cancel" Text="Cancel" />

        </EditItemTemplate>

        <InsertItemTemplate>
            
        </InsertItemTemplate>

        <ItemTemplate>

            <table>
			    <tr>
				    <td align="right" > Material ID: </td><td align="left"><asp:Label ID="materialIDLabel" runat="server" Text='<%# Bind("materialID") %>' /></td>
			    </tr>

                 <tr>
				    <td align="right"> Material Type: </td><td align="left"><asp:Label ID="materialTypeLabel" runat="server" Text='<%# Bind("materialType") %>' /></td>
			    </tr>
            
			    <tr>
				    <td align="right"> Call Number: </td><td align="left"><asp:Label ID="materialCallNumberLabel" runat="server" Text='<%# Bind("materialCallNumber") %>' /></td>
			    </tr>
            
                <tr>
				    <td align="right"> Title: </td><td align="left"><asp:Label ID="materialTitleLabel" runat="server" Text='<%# Bind("materialTitle") %>' /></td>
			    </tr>
            
                <tr>
				    <td align="right"> Author: </td><td align="left"><asp:Label ID="materialAuthorLabel" runat="server" Text='<%# Bind("materialAuthor") %>' /></td>
			    </tr>
                <tr>
				    <td align="right"> Copyright: </td><td align="left"><asp:Label ID="materialCopyrightLabel" runat="server" Text='<%# Bind("materialCopyright") %>' /></td>
			    </tr>
            
                <tr>
				    <td align="right"> ISBN: </td><td align="left"><asp:Label ID="materialISBNLabel" runat="server" Text='<%# Bind("materialISBN") %>' /></td>
			    </tr>


                <tr>
				    <td align="right"> Publisher: </td><td align="left"><asp:Label ID="materialPublisherLabel" runat="server" Text='<%# Bind("materialPublisher") %>' /></td>
			    </tr>


                <tr>
				    <td align="right"> Available: </td><td align="left"><asp:Label ID="materialAvailabilityLabel" runat="server" Text='<%# Bind("materialAvailability") %>' /></td>
			    </tr>

                <tr>
				    <td align="right"> Description: </td><td align="left"><asp:Label ID="materialDescriptionLabel" runat="server" Text='<%# Bind("materialDescription") %>' /></td>
			    </tr>

            </table>

            <asp:Button ID="EditButton" runat="server" CausesValidation="false" commandName="Edit" Text="Edit" />
            
            &nbsp;

            <asp:Button ID="DeleteButton" runat="server" CausesValidation="false" CommandName="Delete" Text="Delete" OnClientClick="return confirm ('Are you sure you want to delete this material record?')" />

            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="CellPhone" HeaderText="CellPhone" SortExpression="CellPhone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="HomePhone" HeaderText="HomePhone" SortExpression="HomePhone" />
                </Columns>
            </asp:GridView>

        </ItemTemplate>
    </asp:FormView>
    
    <asp:Label ID="DeletedMaterialLabel" runat="server" Text=""></asp:Label>

</asp:Content>

