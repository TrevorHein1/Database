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
                    <td align=right>First Name:</td> <td align=left> <asp:TextBox ID="tb_FirstName" runat="server" Columns="50"></asp:TextBox></td>
               
                    <td>
                    
                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" 
                                    ControlToValidate="tb_FirstName" ErrorMessage="First name is required." 
                                    ToolTip="First name is required.">
                                    <span class="rfd">*** Please enter a first name.</span>
                    </asp:RequiredFieldValidator>
                    
                    </td>
               
                </tr>


                <tr>
                    <td align=right>Last Name:</td> <td align=left> <asp:TextBox ID="tb_LastName" runat="server" Columns="50"></asp:TextBox></td>
                
                    <td>
                    
                     <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" 
                                    ControlToValidate="tb_LastName" ErrorMessage="Last name is required." 
                                    ToolTip="Last name is required.">
                                    <span class="rfd">*** Please enter a last name.</span>
                    </asp:RequiredFieldValidator>
                    
                    </td>
                </tr>

                 <tr>
                    <td align=right>Address 1:</td> <td align=left> <asp:TextBox ID="tb_Address1" runat="server" Columns="50"></asp:TextBox></td>
                </tr>

                <tr>
                    <td align=right>Address 2:</td> <td align=left> <asp:TextBox ID="tb_Address2" runat="server" Columns="50"></asp:TextBox></td>
                </tr>

    
                <tr>
                    <td align=right>City:</td> <td align=left> <asp:TextBox ID="tb_City" runat="server" Columns="50"></asp:TextBox></td>
                </tr>

                <tr>
                    <td align=right>State:</td> <td align=left> <asp:DropDownList ID="ddl_State" 
                        runat="server" DataSourceID="ds_ddlState" DataTextField="PostalCode" 
                        DataValueField="PostalCode" AppendDataBoundItems="True"> 
                    <asp:ListItem Value="0">Select State</asp:ListItem>
                    </asp:DropDownList> </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfd_StateRequired" runat="server" 
                                    ControlToValidate="ddl_State" ErrorMessage="State is required." 
                                    ToolTip="State is required." InitialValue="0">
                                    <span class="rfd">*** Please enter a state.</span>
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align=right>Zip:</td> <td align=left> <asp:TextBox ID="tb_Zip" runat="server" Columns="50"></asp:TextBox></td>
                </tr>

                <tr>
                    <td align=right>Cell Phone:</td> <td align=left> <asp:TextBox ID="tb_CellPhone" runat="server" Columns="50"></asp:TextBox></td>
                </tr>

                <tr>
                    <td align=right>Home Phone:</td> <td align=left> <asp:TextBox ID="tb_HomePhone" runat="server" Columns="50"></asp:TextBox></td>
                </tr>

                <tr>
                    <td align=right>Primary E-mail:</td> <td align=left> <asp:TextBox ID="tb_Email" runat="server" Columns="50"></asp:TextBox></td>
                </tr>

                <tr>
                    <td align=right>Birthdate:</td> <td align=left> <asp:TextBox ID="tb_Birthdate" runat="server" Columns="50"></asp:TextBox></td>
                </tr>

            </table>


                   <asp:SqlDataSource runat="server" 
                    ID="ds_ddlState"
                    ConnectionString="<%$ ConnectionStrings:cs_materials %>" 
                    SelectCommand="SELECT [PostalCode] FROM [SLPL_PostalCode]"></asp:SqlDataSource>

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


