<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="DocsBtweenDates.aspx.cs" Inherits="WebAppCCN4V2.Students.DocsBtweenDates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            width: 479px;
        }
        .auto-style10 {
            width: 479px;
            text-align: right;
        }
        .auto-style11 {
            text-align: center;
            font-size: xx-large;
            color: #FF9900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style11">
        LISTE DOCUMENTES ENTRE DEUX DATES</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">Date Debut</td>
            <td class="auto-style8">Date Fin</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Calendar ID="dateDebut" runat="server"></asp:Calendar>
            </td>
            <td class="auto-style8">
                <asp:Calendar ID="dateFin" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Order by : </td>
            <td>
                <asp:DropDownList ID="DDLOrder" runat="server" Height="17px" Width="265px">
                    <asp:ListItem>Auteur</asp:ListItem>
                    <asp:ListItem>Periode</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnAff" runat="server" OnClick="btnAff_Click" Text="Afficher" Width="170px" />
    <br />
    <br />
    <asp:GridView ID="GridVDocs" runat="server" DataKeyNames="codeDoc" EmptyDataText="Aucun document trouvee" OnSelectedIndexChanged="GridVDocs_SelectedIndexChanged">
        <Columns>
            <asp:CommandField AccessibleHeaderText="Comentaires" HeaderText="Affiche" SelectText="Affiche" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    COMMENTAIRES DU DOCUMENT SELECTIONEE : 
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    <br />
    <asp:GridView ID="GridVComment" runat="server" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="no comment found" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
</asp:Content>
