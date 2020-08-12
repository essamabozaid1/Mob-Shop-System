<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.master" AutoEventWireup="true" CodeFile="SearchProduct.aspx.cs" Inherits="product_SearchProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="../all.css" />
    <style type="text/css">
        .auto-style1 {
            width: 59%;
        height: 283px;
    }
        .auto-style2 {
        width: 873px;
    }
    .auto-style3 {
        width: 11px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" Font-Names="Gotham Bold" Font-Size="Small" class="forma" placeholder="SERIAL NUMBER , MODEL , CATEGORY"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the serial number,category,model" Font-Names="Gotham Bold" Font-Size="Small" style="color: #FFFFFF" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Font-Names="Gotham Bold" Font-Size="Small" class="btnlog" />
                <asp:GridView ID="searchGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="serial-number" DataSourceID="SqlDataSource1" Width="701px" Font-Names="Gotham Bold" Font-Size="Small">
                    <AlternatingRowStyle BackColor="White" Font-Names="gotham bold" Font-Size="Small" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="serial-number" HeaderText="serial-number" ReadOnly="True" SortExpression="serial-number" />
                        <asp:BoundField DataField="catogry" HeaderText="catogry" SortExpression="catogry" />
                        <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="quentity" HeaderText="quentity" SortExpression="quentity" />
                    </Columns>
                    <HeaderStyle BackColor="#ED4832" />
                    <RowStyle BackColor="#DFDFDF" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ManageProduct] WHERE [serial-number] = @original_column1 AND [catogry] = @original_catogry AND [model] = @original_model AND [price] = @original_price AND [quentity] = @original_quentity" InsertCommand="INSERT INTO [ManageProduct] ([serial-number], [catogry], [model], [price], [quentity]) VALUES (@column1, @catogry, @model, @price, @quentity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ManageProduct] WHERE (([catogry] = @catogry) OR ([serial-number] = @column1) OR ([model] = @model))" UpdateCommand="UPDATE [ManageProduct] SET [catogry] = @catogry, [model] = @model, [price] = @price, [quentity] = @quentity WHERE [serial-number] = @original_column1 AND [catogry] = @original_catogry AND [model] = @original_model AND [price] = @original_price AND [quentity] = @original_quentity">
                    <DeleteParameters>
                        <asp:Parameter Name="original_column1" Type="String" />
                        <asp:Parameter Name="original_catogry" Type="String" />
                        <asp:Parameter Name="original_model" Type="String" />
                        <asp:Parameter Name="original_price" Type="Int32" />
                        <asp:Parameter Name="original_quentity" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="column1" Type="String" />
                        <asp:Parameter Name="catogry" Type="String" />
                        <asp:Parameter Name="model" Type="String" />
                        <asp:Parameter Name="price" Type="Int32" />
                        <asp:Parameter Name="quentity" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="catogry" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="column1" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="model" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="catogry" Type="String" />
                        <asp:Parameter Name="model" Type="String" />
                        <asp:Parameter Name="price" Type="Int32" />
                        <asp:Parameter Name="quentity" Type="String" />
                        <asp:Parameter Name="original_column1" Type="String" />
                        <asp:Parameter Name="original_catogry" Type="String" />
                        <asp:Parameter Name="original_model" Type="String" />
                        <asp:Parameter Name="original_price" Type="Int32" />
                        <asp:Parameter Name="original_quentity" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

