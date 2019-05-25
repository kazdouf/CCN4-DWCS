<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="UsersComptes.aspx.cs" Inherits="WebAppCCN4V2.Administration.UsersComptes" %>
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
        LISTE UTILISATEURS</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="login" DataSourceID="SqlDataSourceUsers">
            <Columns>
                <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                <asp:BoundField DataField="prenom" HeaderText="prenom" SortExpression="prenom" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="motDePasse" HeaderText="motDePasse" SortExpression="motDePasse" />
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                <asp:BoundField DataField="etat" HeaderText="etat" SortExpression="etat" />
                <asp:BoundField DataField="login" HeaderText="login" ReadOnly="True" SortExpression="login" />
                <asp:TemplateField HeaderText="check">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkAct" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:CCN4_DWCS_V1_ETABLISEMENTConnectionString %>" SelectCommand="SELECT * FROM [Utilisateurs]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="btnAct" runat="server" OnClick="btnAct_Click" Text="Active" />
        <asp:Button ID="btnDesact" runat="server" OnClick="btnDesact_Click" Text="Desactive" />
    </p>
</asp:Content>
