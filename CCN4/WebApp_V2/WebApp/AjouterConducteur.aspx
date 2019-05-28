<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="AjouterConducteur.aspx.cs" Inherits="WebApp.AjouterConducteur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        font-size: xx-large;
        color: #FFFF00;
    }
    .auto-style6 {
        margin-left: 200px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style6">
    <span class="auto-style5">AJOUTER UN CONDUCTEUR</span><br />
</p>
<table class="auto-style1">
    <tr>
        <td>id :</td>
        <td>
            <asp:TextBox ID="txtidCond" runat="server" Width="381px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>nom :</td>
        <td>
            <asp:TextBox ID="txtNomCond" runat="server" Width="381px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>prenom : </td>
        <td>
            <asp:TextBox ID="txtPrnCond" runat="server" Width="381px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>mot de passe :</td>
        <td>
            <asp:TextBox ID="txtMotpassCond" runat="server" Width="381px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>date naissance :</td>
        <td>
            <asp:Calendar ID="DateNaissance" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Ajouter" Width="189px" />
            <br />
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
