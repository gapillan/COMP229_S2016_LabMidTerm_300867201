﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationForm.aspx.cs" Inherits="COMP229_LabMidTerm_300867201.ValidationForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            width: 212px;
        }
        .style7
        {
            width: 212px;
            height: 31px;
        }
        .style9
        {
            height: 26px;
        }
        .style11
        {
            width: 259px;
        }
        .style12
        {
            width: 259px;
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="border: 2pt solid #000000; width: 60%; height: 424px; font-family: Verdana;
            border-collapse: collapse; background-color: #8ad0ff;" align="center">
            <tr>
                <td align="center" colspan="3" class="style9">
                    <asp:Label ID="lblHeader" runat="server" Text="Registration Form" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblName" runat="server" Text="Name :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblEmail" runat="server" Text="E-Mail :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RxvEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Invalid E-mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblPassword" runat="server" Text="Password :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvPwd" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblConfirmPwd" runat="server" Text="Confirm Pasword :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RfvCnfrmPwd" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtConfirmPwd"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CvCnfmPwd" runat="server" ErrorMessage="Password and Confirm Password didnt matched"
                        ForeColor="#FF3300" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPwd"></asp:CompareValidator>
                </td>
            </tr>          
            <tr>
                <td align="right" class="style11">
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtAge" runat="server" MaxLength="2"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RegularExpressionValidator ID="RxvAge" runat="server" ErrorMessage="Invalid Age, Age must be between 21-30."
                        ForeColor="#FF3300" ValidationExpression="^([2-3][0-1]?)$" ControlToValidate="txtAge"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
            <td align="center" class="style12">
                &nbsp;
                <asp:Label ID="lblMsg" runat="server" ForeColor="#CC3300"></asp:Label>
            </td>
            <td class="style12">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />&nbsp;
                <asp:Button ID="btnClear" runat="server" CausesValidation="False" OnClick="btnClear_Click"
                    Text="Clear" />
            </td>
            <td align="center" class="style7">
            </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

