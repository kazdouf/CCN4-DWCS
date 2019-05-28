<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="LstVehiculesEntreDeuxDates.aspx.cs" Inherits="WebApp.LstVehiculesEntreDeuxDates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 408px;
        text-align: center;
    }
    .auto-style6 {
        text-align: center;
    }
    .auto-style7 {
        text-align: center;
        font-size: xx-large;
            color: #FFFF00;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style7">
    LISTE VEHICULES CONDUITES ENTRE DEUX DATES</p>
<table class="auto-style1">
    <tr>
        <td class="auto-style5">DATE DEBUT</td>
        <td class="auto-style6">DATE FIN</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Calendar ID="dateDebut" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </td>
        <td class="auto-style6">
            <asp:Calendar ID="DateFin" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </td>
    </tr>
</table>
<asp:Button ID="btnAfficher" runat="server" OnClick="btnAfficher_Click" Text="Afficher" Width="164px" />
<br />
<p>
    <asp:GridView ID="GridView1" runat="server" EmptyDataText="Aucune vehicule conduite">
    </asp:GridView>
</p>
</asp:Content>
