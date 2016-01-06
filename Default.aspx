<%@ Page Title="" Language="C#" MasterPageFile="~/First.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FacebookATM.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" 
                ImageUrl="Images/MTAFACE.png" Width="263px" />

            <table class="style1">
                <tr>
                    <td class="style2" colspan="4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style6">
                        <asp:Label ID="Label9" runat="server" style="font-weight: 700; color: #FF0000; font-size: x-large;" 
                            Text="SignUp"></asp:Label>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="UsernameTB" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" 
                            ControlToValidate="UsernameTB" ErrorMessage="Please enter an Username">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="EmailTB" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="EmailValidator" runat="server" 
                            ControlToValidate="EmailTB" ErrorMessage="Please enter an email">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="EmailTB" ErrorMessage="Please enter a valid email" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label3" runat="server" Text="FirstName"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="FirstNameTB" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" 
                            ControlToValidate="FirstNameTB" ErrorMessage="Please enter a FirstName">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label4" runat="server" Text="LastName"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="LastNameTB" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" 
                            ControlToValidate="LastNameTB" ErrorMessage="Please enter a LastName">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label8" runat="server" Text="Groupe"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="GroupeTB" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label5" runat="server" Text="Birthday"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="BirthdayTB" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RegularExpressionValidator ID="BirthdayValidator" runat="server" 
                            ControlToValidate="BirthdayTB" 
                            ErrorMessage="The birthday you entered isn't valid" 
                            ValidationExpression="([1-9]|[1-2][0-9]|3[0-2])/([1-9]|1[0-2])/[1-9][0-9][0-9][0-9]">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="PasswordTB" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" 
                            ControlToValidate="PasswordTB" ErrorMessage="Please enter a Password">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="ConfirmPasswordTB" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="ConfirmPasswordValidator" runat="server" 
                            ControlToValidate="ConfirmPasswordTB" 
                            ErrorMessage="Please enter again the password">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="ConfirmPasswordCompareValidator" runat="server" 
                            ControlToCompare="PasswordTB" ControlToValidate="ConfirmPasswordTB" 
                            ErrorMessage="The passwords aren't the same">*</asp:CompareValidator>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Button ID="Button1" runat="server" Text="SignUp" onclick="Button1_Click" />
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
            </table>
</asp:Content>
