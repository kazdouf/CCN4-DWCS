<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="webServiceDocsForTheme.aspx.cs" Inherits="WebAppCCN4V2.Students.webServiceDocsForTheme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            color: #FF9900;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        DOCUMENTES POUR UN THEME</p>
    <p>
        selectionee un Theme :
        <asp:DropDownList ID="DDLThemes" runat="server" DataSourceID="SqlDataSourceThemes" DataTextField="libelleTheme" DataValueField="codeTheme" Height="16px" Width="246px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceThemes" runat="server" ConnectionString="<%$ ConnectionStrings:CCN4_DWCS_V1_ETABLISEMENTConnectionString %>" SelectCommand="SELECT [codeTheme], [libelleTheme] FROM [Themes]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="btnAff" runat="server" OnClick="btnAff_Click" Text="Afficher" Width="263px" />
    </p>
    <p>
        <asp:GridView ID="GridViewDocs" runat="server">
        </asp:GridView>
    </p>
</asp:Content>
