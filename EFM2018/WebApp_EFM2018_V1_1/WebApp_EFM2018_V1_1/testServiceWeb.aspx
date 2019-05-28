<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="testServiceWeb.aspx.cs" Inherits="WebApp_EFM2018_V1_1.testServiceWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        text-align: center;
        font-size: xx-large;
    }
    .auto-style7 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style6">
    TESTE SERVICE WEB</p>
<table class="auto-style1">
    <tr>
        <td class="auto-style7">Salle : </td>
        <td>
            <asp:DropDownList ID="DDLSalle" runat="server" DataSourceID="SqlDataSourceSalle" DataTextField="CodeSalle" DataValueField="CodeSalle" Height="16px" Width="191px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceSalle" runat="server" ConnectionString="<%$ ConnectionStrings:EFM2018_DWCS_V11ConnectionString %>" SelectCommand="SELECT [CodeSalle] FROM [SalleFete]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Evenement : </td>
        <td>
            <asp:DropDownList ID="DDLEvent" runat="server" DataSourceID="SqlDataSourceEvent" DataTextField="NumEvenement" DataValueField="NumEvenement" Height="16px" Width="191px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceEvent" runat="server" ConnectionString="<%$ ConnectionStrings:EFM2018_DWCS_V11ConnectionString %>" SelectCommand="SELECT [NumEvenement] FROM [Evenement]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
<br />
<asp:Button ID="btnVerif" runat="server" Text="VERIFIER" Width="412px" OnClick="btnVerif_Click" />
<br />
<br />
<asp:Label ID="lblRes" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#0000CC"></asp:Label>
</asp:Content>
