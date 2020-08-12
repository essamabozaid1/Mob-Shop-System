<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="AddSeller.aspx.cs" Inherits="seller_AddSeller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="../all.css" />
     <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
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
            width: 171px;
        }
    .auto-style9 {
            width: 171px;
        }
         .auto-style11 {
             color: #FFFFFF;
         }
         .auto-style12 {
             width: 590px;
             height: 71px;
         }
         .auto-style13 {
             height: 71px;
             width: 171px;
         }
         .auto-style14 {
             height: 71px;
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
            <asp:TextBox ID="txtfirstname" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="FIRST NAME"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname" CssClass="auto-style11" ErrorMessage="Please enter the first name" Font-Names="Gotham Bold" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtlastname" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="LAST NAME"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname" CssClass="auto-style11" ErrorMessage="Please enter the last name" Font-Names="Gotham Bold" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtusername" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="USERNAME"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtusername" CssClass="auto-style11" ErrorMessage="Please enter the user name" Font-Names="Gotham Bold" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtpassword" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="PASSWORD"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpassword" CssClass="auto-style11" ErrorMessage="Please enter the password" Font-Names="Gotham Bold" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtrepass" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="CONFIRM PASSWORD"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtrepass" ErrorMessage="The password not matched" CssClass="auto-style11" Font-Names="Gotham Bold" Font-Size="Small"></asp:CompareValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtphone" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="PHONE"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphone" CssClass="auto-style11" ErrorMessage="Please enter the phone number" Font-Names="Gotham Bold" Font-Size="Small"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="the phone is error" ValidationExpression="^01[0-2]{1}[0-9]{8}" CssClass="auto-style11" Font-Names="Gotham Bold" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtemail" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="E-MAIL"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" CssClass="auto-style11" ErrorMessage="The email is error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Gotham Bold" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtbirthdate" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="BIRTHDATE"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtbirthdate" CssClass="auto-style11" ErrorMessage="Please enter the birthday" Font-Names="Gotham Bold" Font-Size="Small"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtbirthdate" CssClass="auto-style11" ErrorMessage="The date is error" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" Font-Names="Gotham Bold" Font-Size="Small"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style8">
            <asp:DropDownList ID="DDPosition" runat="server" Font-Names="Gotham Bold" Font-Size="Small">
                <asp:ListItem Selected="True">Seller</asp:ListItem>
                <asp:ListItem>manager</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style5">
            </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <br />
        </td>
        <td class="auto-style2">
            <asp:Button ID="btnAdd" runat="server" Text="Add Employee" OnClick="btnAdd_Click" Font-Names="Gotham Bold" Font-Size="Small" class="btnlog" />
        </td>
        <td class="auto-style2">
            <asp:Label ID="Msg" runat="server" style="color:white;" Font-Names="Gotham Bold" Font-Size="Small" ></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

