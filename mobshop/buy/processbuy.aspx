<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="processbuy.aspx.cs" Inherits="buy_processbuy" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="../all.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .contains {

            text-align:center;
        }

        

        .auto-style2 {
            width: 963px;
            text-align: left;
        }
        .auto-style3 {
            width: 963px;
            height: 155px;
        }
        .auto-style4 {
            height: 155px;
        }
        .auto-style5 {
            width: 1318px;
            height: 155px;
        }
        .auto-style6 {
            width: 1318px;
            text-align: left;
        }
        .auto-style7 {
            width: 333px;
            height: 155px;
        }
        .auto-style9 {
            width: 1025px;
            text-align: left;
        }
        .auto-style10 {
            width: 342px;
            text-align: left;
        }
        .auto-style11 {
            width: 337px;
            text-align: left;
        }
        .auto-style12 {
            width: 333px;
            text-align: left;
        }

        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contains">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style7"></td>
                <td class="auto-style3" colspan="3"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">
    <asp:TextBox ID="txtsearch" runat="server" placeholder="MODEL" Font-Names="Gotham" class="forma"  ></asp:TextBox>
    
                </td>
                <td class="auto-style2" colspan="3">
    
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="FIND PRODUCT" class="btnlog" Width="155px"  /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2" colspan="3">
    <asp:Label ID="lblprice" runat="server" Font-Bold="False" Font-Names="Gotham Bold" ForeColor="White"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">
        <asp:TextBox ID="txtsearchClient" runat="server" placeholder="CLIENT PHONE" Font-Names="Gotham" class="forma"></asp:TextBox>
                </td>
                <td class="auto-style2" colspan="3">
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="FIND CLIENT" class="btnlog" Width="155px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2" colspan="3"><asp:Label ID="lblClient" runat="server" Font-Bold="False" Font-Names="Gotham Bold" ForeColor="White"></asp:Label>
   
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">  <asp:TextBox ID="txtSerial" runat="server"  placeholder="MODEL ID" Font-Names="Gotham" class="forma"></asp:TextBox>
                </td>
                <td class="auto-style10">
    <asp:TextBox ID="txtclient" runat="server" placeholder="CLIENT ID" Font-Names="Gotham" class="forma"></asp:TextBox>
                </td>
                <td class="auto-style11">
    <asp:TextBox ID="txtseller" runat="server" placeholder="SELLER ID" Font-Names="Gotham" class="forma" ReadOnly="true"></asp:TextBox>
                </td>
                <td class="auto-style9"><asp:Button ID="BUY" runat="server" OnClick="BUY_Click" Text="BUY" class="btnlog" Width="78px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2" colspan="3"><asp:Label ID="Msg" runat="server" Font-Bold="False" Font-Names="Gotham Bold" ForeColor="White"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2" colspan="3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    <br />
    <br />
   
       <br />  
    <br />
    <br />
    </div>
</asp:Content>


