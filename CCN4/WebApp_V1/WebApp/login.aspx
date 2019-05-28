<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebAppCCN4V2.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        width: 374px;
        text-align: right;
    }
    .auto-style9 {
        width: 100%;
        height: 118px;
    }
    .auto-style10 {
        color: #FF9900;
        font-size: xx-large;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style10">
    LOGIN PAGE</p>
<table class="auto-style9">
    <tr>
        <td class="auto-style8">Login : </td>
        <td>
            <asp:TextBox ID="txtLogin" runat="server" Width="353px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Password : </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" Width="353px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <br />
            <asp:Button ID="btnCnx" runat="server" OnClick="btnCnx_Click" Text="Connection" Width="139px" />
        </td>
        <td>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <br />
            <asp:LinkButton ID="LinkInscrip" runat="server" PostBackUrl="~/inscription.aspx">Inscription</asp:LinkButton>
        </td>
    </tr>
</table>
<br />
</asp:Content>
