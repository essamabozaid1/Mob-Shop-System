<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="AddMember.aspx.cs" Inherits="AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="../all.css" />
    <style type="text/css">
     .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        width: 590px;
    }
    .auto-style4 {
        width: 590px;
        height: 38px;
    }
    .auto-style5 {
        height: 38px;
    }
    .auto-style8 {
        height: 38px;
        width: 241px;
    }
    .auto-style9 {
    }
        .auto-style10 {
            color: #FFFFFF;
        }
    .auto-style11 {
        width: 241px;
    }
    .auto-style12 {
        width: 590px;
        height: 127px;
    }
    .auto-style13 {
        height: 127px;
        width: 241px;
    }
    .auto-style14 {
        height: 127px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table class="auto-style1">
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style13">
        </td>
        <td class="auto-style14">
            </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtfirstname" runat="server" class="forma" placeholder="FIRST NAME"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname" CssClass="auto-style10" ErrorMessage="Please enter the first name" Font-Names="Gotham Bold" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style11">
            <asp:TextBox ID="txtlastname" runat="server" class="forma" placeholder="LAST NAME"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname" CssClass="auto-style10" ErrorMessage="Please enter the last name" Font-Names="Gotham Bold" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style11">
            <asp:TextBox ID="txtphone" runat="server" class="forma" placeholder="PHONE"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphone" CssClass="auto-style10" ErrorMessage="Please enter the phone number" Font-Names="Gotham Bold" Font-Size="Small"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="the phone is error" ValidationExpression="^01[0-2]{1}[0-9]{8}" CssClass="auto-style10" Font-Names="Gotham Bold" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtemail" runat="server" class="forma" placeholder="E-MAIL"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" CssClass="auto-style10" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Gotham Bold" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style11">
            <asp:TextBox ID="txtage" runat="server" class="forma" placeholder="AGE"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style11">
            <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" class="btnlog" />
            <asp:Label ID="Msg" runat="server" style="margin-left:10px; " CssClass="auto-style10" Font-Names="Gotham Bold" Font-Size="Small"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style11">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <br />
        </td>
        <td class="auto-style9" colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

