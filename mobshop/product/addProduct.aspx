<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="addProduct.aspx.cs" Inherits="product_addProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="../all.css" />
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 38px;
    }
    .auto-style3 {
        height: 38px;
        width: 590px;
    }
    .auto-style4 {
            width: 135px;
        }
        .auto-style5 {
            height: 38px;
            width: 268px;
        }
        .auto-style6 {
            width: 265px;
        }
        .auto-style7 {
            color: #FF0000;
        }
        .toggle {
            width: 350px;
        }
        .auto-style8 {
            height: 38px;
            width: 185px;
        }
        .auto-style9 {
            width: 185px;
        }
        .auto-style10 {
            color: #FFFFFF;
        }
        .auto-style11 {
            width: 590px;
        }
        .auto-style12 {
            height: 127px;
            width: 590px;
        }
        .auto-style13 {
            height: 127px;
            width: 185px;
        }
        .auto-style14 {
            height: 127px;
        }
        .auto-style15 {
            height: 8px;
        }
        .auto-style16 {
            height: 21px;
        }
    </style>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.0.min.js"></script>
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
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtserial" runat="server" ValidationGroup="form" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="SERIAL NUMBER" ></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtserial" CssClass="auto-style10" ErrorMessage="Enter the serial-number" Font-Names="Gotham Bold" Font-Size="Small" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style9">
            <asp:DropDownList ID="DDCatogry" runat="server" DataSourceID="SqlDataSource1" DataTextField="Catogry" DataValueField="Catogry" ValidationGroup="form" Font-Names="Gotham Bold" Font-Size="Small" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Catogry] FROM [Catogry]"></asp:SqlDataSource>
            <div ID="newcat"   class="newcatogry" style="width: 90px; height: 30px; display: inline" > <span class="auto-style10">New Catogry</span> </div>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDCatogry" CssClass="auto-style10" ErrorMessage="Enter the category" Font-Names="Gotham Bold" Font-Size="Small" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style9">
            <div class="toggle" style="display:none;" >
                   <table class="auto-style1">
    <tr>
        <td class="auto-style15"> <span class="auto-style7"></span></td>
        <td colspan="2" class="auto-style15">
            <asp:TextBox ID="txtNameCat" runat="server" style="margin-left: 0px" ValidationGroup="newcat" class="forma" placeholder="CATEGORY" ></asp:TextBox><div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNameCat" ErrorMessage="Enter the catogry name" style="color: #FFFFFF" Font-Names="Gotham Bold" Font-Size="Small" ValidationGroup="newcat"></asp:RequiredFieldValidator></div>
        </td>
    </tr>
    <tr>
        <td class="auto-style16"></td>
        <td colspan="2" class="auto-style16">
            <asp:TextBox ID="txtDescription" runat="server" ValidationGroup="newcat" class="forma" placeholder="DESCRIPTION"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style6">
            <asp:Button ID="btnaddcatogry" runat="server" OnClick="btnaddcatogry_Click" Text="Add Catogry" ValidationGroup="newcat" class="btnlog" Font-Names="Gotham Bold" Font-Size="Small" />
        </td>
        <td class="auto-style5">
            <asp:Label ID="msgCAt" runat="server" Font-Names="Gotham Bold" Font-Size="Small" style="color: #FFFFFF"></asp:Label>
        </td>
    </tr>
</table>
            </div>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtModel" runat="server" ValidationGroup="form" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="MODEL"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtModel" CssClass="auto-style10" ErrorMessage="Enter the model" Font-Names="Gotham Bold" Font-Size="Small" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtPrice" runat="server" ValidationGroup="form" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="PRICE"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrice" CssClass="auto-style10" ErrorMessage="Enter the price" Font-Names="Gotham Bold" Font-Size="Small" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtQuentity" runat="server" ValidationGroup="form" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="QUANTITY"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtQuentity" CssClass="auto-style10" ErrorMessage="Enter the Quantity" Font-Names="Gotham Bold" Font-Size="Small" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style9">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Product" ValidationGroup="form" Font-Names="Gotham Bold" class="btnlog" Font-Size="Small" />
        </td>
        <td>
            <asp:Label ID="msg" runat="server" CssClass="auto-style10" Font-Names="Gotham Bold" Font-Size="Small"></asp:Label>
        </td>
    </tr>
</table>
    <script>
        $(document).ready(function () {
            $(".newcatogry").click(function () {
                $(".toggle").slideToggle();


            });
        });
    </script>

</asp:Content>

