<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="searchseller.aspx.cs" Inherits="seller_searchseller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="../all.css" />
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:TextBox ID="txtdelete" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="ID" ValidationGroup="delete"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdelete" CssClass="auto-style1" ErrorMessage="Enter the ID" Font-Names="Gotham Bold" Font-Size="Small" ValidationGroup="delete"></asp:RequiredFieldValidator>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"  Text="delete" Font-Names="Gotham Bold" Font-Size="Small" class="btnlog" ValidationGroup="delete" />
    <asp:Label ID="lblOk" runat="server" Font-Names="Gotham Bold" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txtSearch" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="FIRST NAME , LAST NAME , USERNAME" ValidationGroup="Search" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSearch" CssClass="auto-style1" ErrorMessage="Enter the firstname,lastname,username" Font-Names="Gotham Bold" Font-Size="Small" ValidationGroup="Search"></asp:RequiredFieldValidator>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="search" Font-Names="Gotham Bold" Font-Size="Small" class="btnlog" ValidationGroup="Search" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="883px" Font-Names="Gotham Bold">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="birthdate" HeaderText="birthdate" SortExpression="birthdate" />
            <asp:BoundField DataField="position" HeaderText="position" SortExpression="position" />
        </Columns>
        <HeaderStyle BackColor="#ED4832" Font-Names="Gotham Bold" Font-Size="Small" />
        <RowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Seller] WHERE (([firstname] = @firstname) OR ([lastname] = @lastname) OR ([username] = @username))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="firstname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtSearch" Name="lastname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtSearch" Name="username" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

