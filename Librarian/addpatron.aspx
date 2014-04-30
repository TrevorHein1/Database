<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="addpatron.aspx.vb" Inherits="Librarian_addpatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:WizardStep ID="UserProfile" runat="server" StepType="Step" Title="User Profile Settings">

                <table>
                    <tr>
                        <asp:Label ID="lbl_FirstName" runat="server" Text="First Name:"></asp:Label> <asp:TextBox ID="tb_FirstName" runat="server" Columns="50"></asp:TextBox>
                    </tr>

                    <tr>
                        <asp:Label ID="lbl_LastName" runat="server" Text="Last Name:"></asp:Label> <asp:TextBox ID="tb_LastName" runat="server" Columns="50"></asp:TextBox>
                    </tr>

                    <tr>
                        <asp:Label ID="lbl_Birthdate" runat="server" Text="Birthdate:"></asp:Label> <asp:TextBox ID="tb_Birthdate" runat="server" Columns="50"></asp:TextBox>
                    </tr>

                    <tr>
                        <asp:Label ID="lbl_Address1" runat="server" Text="Address 1:"></asp:Label> <asp:TextBox ID="tb_Address1" runat="server" Columns="50"></asp:TextBox>
                    </tr>

                    <tr>
                        <asp:Label ID="lbl_Address2" runat="server" Text="Address 2:"></asp:Label> <asp:TextBox ID="tb_Address2" runat="server" Columns="50"></asp:TextBox>
                    </tr>

                    <tr>
                        <asp:Label ID="lbl_City" runat="server" Text="City:"></asp:Label> <asp:TextBox ID="tb_City" runat="server" Columns="50"></asp:TextBox>
                    </tr>

                    <tr>
                        <asp:Label ID="lbl_State" runat="server" Text="State:"> <asp:DropDownList ID="ddl_Zip" runat="server" DataSourceID="ds_ddlZip" DataTextField="PostalCode" DataValueField="PostalCode"> </asp:DropDownList></asp:Label>
                    </tr>

                    <tr>
                        <asp:Label ID="lbl_Zip" runat="server" Text="Zip:"></asp:Label> <asp:TextBox ID="tb_Zip" runat="server" Columns="50"></asp:TextBox>
                    </tr>

                    <tr>
                        <asp:Label ID="lbl_CellPhone" runat="server" Text="Cell Phone:"></asp:Label> <asp:TextBox ID="tb_CellPhone" runat="server" Columns="50"></asp:TextBox>
                    </tr>

                    <tr>
                    <asp:Label ID="lbl_HomePhone" runat="server" Text="Home Phone:"></asp:Label> <asp:TextBox ID="tb_HomePhone" runat="server" Columns="50"></asp:TextBox>
                    </tr>

                    <tr>
                        <asp:Label ID="lbl_Email" runat="server" Text="Primary E-mail:"></asp:Label> <asp:TextBox ID="tb_Email" runat="server" Columns="50"></asp:TextBox>
                    </tr>

                </table>
                
                    <asp:SqlDataSource runat="server"
                        ID="ds_ddlZip"
                        ConnectionString="<%$ ConnectionStrings:cs_materials %>"
                        SelectCommand="SELECT [PostalCode] FROM [SLPL_PostalCode]">
                    </asp:SqlDataSource>



            </asp:WizardStep>

            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center" colspan="2">Complete</td>
                        </tr>
                        <tr>
                            <td>Your account has been successfully created.</td>
                        </tr>
                        
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>



</asp:Content>


