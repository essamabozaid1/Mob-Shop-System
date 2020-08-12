<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="AddCatogry.aspx.cs" Inherits="AddCatogry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 193px;
    }
    .auto-style4 {
        width: 193px;
        height: 38px;
    }
    .auto-style5 {
        height: 38px;
    }
    .auto-style6 {
        height: 38px;
        width: 18px;
    }
    .auto-style7 {
        color: #FF0000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">Name of catogry <span class="auto-style7">*</span></td>
        <td colspan="2">
            <asp:TextBox ID="txtNameCat" runat="server" style="margin-left: 0px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNameCat" ErrorMessage="PLease enter the Name of Catogry" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Description</td>
        <td colspan="2">
            <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style6">
            <asp:Button ID="btnaddcatogry" runat="server" OnClick="btnaddcatogry_Click" Text="Add Catogry" />
        </td>
        <td class="auto-style5">
            <asp:Label ID="msg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

