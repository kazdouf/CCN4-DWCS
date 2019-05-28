<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="consulterLocation.aspx.cs" Inherits="WebApp_EFM2018_V1_1.Prive.consulterLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style6">
        CONSULTER LOCATION</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="NumLocation" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:TemplateField HeaderText="Action" ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" OnClick="Button1_Click" Text="Rapporter" />
                        <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;voulezvous supprimer&quot;);" Text="Supprimer" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="NumLocation" HeaderText="NumLocation" ReadOnly="True" SortExpression="NumLocation" />
                <asp:BoundField DataField="CodeSalle" HeaderText="CodeSalle" SortExpression="CodeSalle" />
                <asp:BoundField DataField="NumEvenement" HeaderText="NumEvenement" SortExpression="NumEvenement" />
                <asp:BoundField DataField="dateLocation" HeaderText="dateLocation" SortExpression="dateLocation" />
                <asp:BoundField DataField="prixLocation" HeaderText="prixLocation" SortExpression="prixLocation" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EFM2018_DWCS_V11ConnectionString %>" DeleteCommand="DELETE FROM [Louer] WHERE [NumLocation] = @NumLocation" InsertCommand="INSERT INTO [Louer] ([NumLocation], [CodeSalle], [NumEvenement], [dateLocation], [prixLocation]) VALUES (@NumLocation, @CodeSalle, @NumEvenement, @dateLocation, @prixLocation)" SelectCommand="SELECT * FROM [Louer]" UpdateCommand="UPDATE [Louer] SET [CodeSalle] = @CodeSalle, [NumEvenement] = @NumEvenement, [dateLocation] = @dateLocation, [prixLocation] = @prixLocation WHERE [NumLocation] = @NumLocation">
            <DeleteParameters>
                <asp:Parameter Name="NumLocation" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NumLocation" Type="Int32" />
                <asp:Parameter Name="CodeSalle" Type="Int32" />
                <asp:Parameter Name="NumEvenement" Type="Int32" />
                <asp:Parameter DbType="Date" Name="dateLocation" />
                <asp:Parameter Name="prixLocation" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CodeSalle" Type="Int32" />
                <asp:Parameter Name="NumEvenement" Type="Int32" />
                <asp:Parameter DbType="Date" Name="dateLocation" />
                <asp:Parameter Name="prixLocation" Type="Double" />
                <asp:Parameter Name="NumLocation" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
