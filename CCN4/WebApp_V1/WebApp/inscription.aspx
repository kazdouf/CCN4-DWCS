<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="WebAppCCN4V2.inscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        text-align: right;
        width: 276px;
    }
    .auto-style9 {
        text-align: center;
        color: #FF9900;
        font-size: xx-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style9">
    INSCRIPTION PAGE</p>
<table class="auto-style1">
    <tr>
        <td class="auto-style8">Login : </td>
        <td>
            <asp:TextBox ID="txtLogin" runat="server" Width="263px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Nom : </td>
        <td>
            <asp:TextBox ID="txtNom" runat="server" Width="263px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Prenom : </td>
        <td>
            <asp:TextBox ID="txtPren" runat="server" Width="263px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Email : </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Width="263px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Mot de passe : </td>
        <td>
            <asp:TextBox ID="txtPasse" runat="server" Width="263px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>
            <asp:Button ID="btnInsc" runat="server" OnClick="btnInsc_Click" Text="Inscription" Width="144px" />
        </td>
    </tr>
</table>
</asp:Content>
