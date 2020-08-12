<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="SearchMember.aspx.cs" Inherits="member_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="../all.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 27px;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        .auto-style5 {
            height: 27px;
            width: 252px;
        }
        .auto-style6 {
            width: 252px;
        }
        .auto-style7 {
            height: 27px;
            width: 590px;
        }
        .auto-style8 {
        }
        .auto-style9 {
            width: 590px;
        }
        .auto-style10 {
            height: 27px;
            width: 208px;
        }
        .auto-style11 {
            width: 208px;
        }
        .auto-style12 {
            height: 127px;
            width: 590px;
        }
        .auto-style13 {
            height: 127px;
            width: 252px;
        }
        .auto-style14 {
            height: 127px;
            width: 208px;
        }
        .auto-style15 {
            height: 127px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style12">
            </td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style15">
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtSearch" runat="server" class="forma" ValidationGroup="search" placeholder="FIRSTNAME , LASTNAME , PHONE"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SEARCH" class="btnlog" ValidationGroup="search" style="margin-bottom:8px" />
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdelete" CssClass="auto-style4" ErrorMessage="Enter the ID" Font-Names="Gotham Bold" Font-Size="Small" ValidationGroup="delete"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtdelete" runat="server" class="forma" ValidationGroup="delete" placeholder="ID"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-bottom:8px" Text="DELETE" class="btnlog" ValidationGroup="delete" />
                <asp:Label ID="lblOk" runat="server" Font-Names="Gotham Bold" style="color: #FFFFFF" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSearch" CssClass="auto-style4" ErrorMessage="Enter the firstname,lastname,phone" Font-Names="Gotham Bold" Font-Size="Small" ValidationGroup="search"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="3">
                <asp:GridView ID="searchgrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" HorizontalAlign="Right" Width="670px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Names="Gotham Bold" Font-Size="Small" ForeColor="Black" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="day" HeaderText="day" SortExpression="day" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#ED4832" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DFDFDF" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ManageMember] WHERE (([FirstName] = @FirstName) OR ([LastName] = @LastName) OR ([Phone] = @Phone))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtSearch" Name="FirstName" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtSearch" Name="LastName" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtSearch" Name="Phone" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>


