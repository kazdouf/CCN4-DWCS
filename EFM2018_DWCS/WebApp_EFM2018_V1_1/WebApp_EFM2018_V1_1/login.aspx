<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApp_EFM2018_V1_1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style9 {
            height: 31px;
        }
        .auto-style10 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style6">
        LOGIN</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">CIN : </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtCIN" runat="server" Width="251px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Mot de passe : </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtPass" runat="server" Width="251px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CONNEXION" Width="324px" />
</asp:Content>
