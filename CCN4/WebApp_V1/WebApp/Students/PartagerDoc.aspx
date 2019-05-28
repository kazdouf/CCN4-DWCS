<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="PartagerDoc.aspx.cs" Inherits="WebAppCCN4V2.Students.PartagerDoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            color: #FF9900;
            font-size: xx-large;
        }
        .auto-style9 {
            width: 337px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        SHARE DOCUMENTS</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">id : </td>
            <td>
                <asp:TextBox ID="txtId" runat="server" Width="318px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Description : </td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" Width="318px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Date envoie : </td>
            <td>
                <asp:Calendar ID="DateEnvoie" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Etat : </td>
            <td>
                <asp:TextBox ID="txtEtat" runat="server" Width="318px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Theme : </td>
            <td>
                <asp:DropDownList ID="DDLTheme" runat="server" DataSourceID="SqlDataSourceThemes" DataTextField="libelleTheme" DataValueField="codeTheme" Height="16px" Width="325px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceThemes" runat="server" ConnectionString="<%$ ConnectionStrings:CCN4_DWCS_V1_ETABLISEMENTConnectionString %>" SelectCommand="SELECT [codeTheme], [libelleTheme] FROM [Themes]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Document : </td>
            <td>
                <asp:FileUpload ID="FileUploadDoc" runat="server" Width="324px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
                <asp:Button ID="btnShare" runat="server" OnClick="btnShare_Click" Text="Share" Width="212px" />
            </td>
        </tr>
    </table>
</asp:Content>
