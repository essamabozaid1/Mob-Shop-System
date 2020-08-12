<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="oldClient.aspx.cs" Inherits="buy_oldClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {}
    .auto-style5 {
        text-align: center;
        width: 182px;
    }
    .auto-style6 {
        width: 184px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
    <tr>
        <td class="auto-style5">Search by ID</td>
        <td class="auto-style6">
            <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:Button ID="btnSearchID" runat="server" OnClick="btnSearchID_Click" Text="Search" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="searchgrid" runat="server" CellPadding="4" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="319px" Width="825px" BackColor="#ED4832">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:BoundField DataField="day" HeaderText="day" SortExpression="day" />
                </Columns>
                <EditRowStyle HorizontalAlign="Center" />
                <EmptyDataRowStyle HorizontalAlign="Center" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#ED4832" Font-Bold="True" ForeColor="White" Font-Names="Gotham Bold" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" Font-Names="Gotham" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ManageMember] WHERE (([Id] = @Id) OR ([FirstName] = @FirstName) OR ([Phone] = @Phone))" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtID" Name="Id" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtID" Name="FirstName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtID" Name="Phone" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>

</asp:Content>

