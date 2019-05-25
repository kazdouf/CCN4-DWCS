<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="ListeAccidentesWebService.aspx.cs" Inherits="WebApp.ListeAccidentesWebService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        text-align: center;
        font-size: xx-large;
        color: #FFFF00;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
    LISTE ACCIDENTES D&#39;UN CONDUCTEUR</p>
<p>
    Saisie l&#39;id du conducteur :
    <asp:TextBox ID="txtIdConduct" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btnAfficher" runat="server" OnClick="btnAfficher_Click" Text="Afficher" Width="258px" />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</p>
</asp:Content>
