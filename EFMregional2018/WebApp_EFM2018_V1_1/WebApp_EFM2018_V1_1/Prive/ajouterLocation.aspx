<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="ajouterLocation.aspx.cs" Inherits="WebApp_EFM2018_V1_1.Prive.ajouterLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style6">
        AJOUTER LOCATION</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">Numero : </td>
            <td>
                <asp:TextBox ID="txtNum" runat="server" Width="218px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNum" ErrorMessage="numero obligatoire"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Salle : </td>
            <td>
                <asp:DropDownList ID="DDLSalle" runat="server" DataSourceID="SqlDataSourceSalle" DataTextField="CodeSalle" DataValueField="CodeSalle" Height="16px" Width="224px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceSalle" runat="server" ConnectionString="<%$ ConnectionStrings:EFM2018_DWCS_V11ConnectionString %>" SelectCommand="SELECT [CodeSalle] FROM [SalleFete]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Evenement : </td>
            <td>
                <asp:DropDownList ID="DDLEvent" runat="server" DataSourceID="SqlDataSourceEvent" DataTextField="NumEvenement" DataValueField="NumEvenement" Height="16px" Width="224px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceEvent" runat="server" ConnectionString="<%$ ConnectionStrings:EFM2018_DWCS_V11ConnectionString %>" SelectCommand="SELECT [NumEvenement] FROM [Evenement]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Date : </td>
            <td>
                <asp:Calendar ID="dateLocation" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Prix : </td>
            <td>
                <asp:TextBox ID="txtPrix" runat="server" Width="218px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrix" ErrorMessage="prix obligatoire"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPrix" ErrorMessage="prix doit etre entre 10000 et 30000" MaximumValue="30000" MinimumValue="10000" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Ajouter" Width="172px" />
                <br />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
