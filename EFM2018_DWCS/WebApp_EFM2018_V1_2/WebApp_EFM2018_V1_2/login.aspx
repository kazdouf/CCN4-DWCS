<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApp_EFM2018_V1_2.login" %>
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
        LOGIN PAGE</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">Numero Athlete : </td>
            <td>
                <asp:TextBox ID="txtNum" runat="server" Width="229px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Mot de passe : </td>
            <td>
                <asp:TextBox ID="txtPasse" runat="server" Width="229px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CONNEXION" Width="248px" />
</asp:Content>
