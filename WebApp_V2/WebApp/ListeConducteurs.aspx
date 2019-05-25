<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="ListeConducteurs.aspx.cs" Inherits="WebApp.ListeConducteurs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            font-size: xx-large;
            color: #FFFF00;
        }
        .auto-style6 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        LISTE DES CONDUCTEURS</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idCond" DataSourceID="SqlDataSourceLSTCONDUCT">
            <Columns>
                <asp:CommandField AccessibleHeaderText="Accidentes" HeaderText="Accidentes" ShowSelectButton="True" />
                <asp:BoundField DataField="idCond" HeaderText="idCond" ReadOnly="True" SortExpression="idCond" />
                <asp:BoundField DataField="nomCond" HeaderText="nomCond" SortExpression="nomCond" />
                <asp:BoundField DataField="preCond" HeaderText="preCond" SortExpression="preCond" />
                <asp:BoundField DataField="dateN" HeaderText="dateN" SortExpression="dateN" />
                <asp:BoundField DataField="motDePasse" HeaderText="motDePasse" SortExpression="motDePasse" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceLSTCONDUCT" runat="server" ConnectionString="<%$ ConnectionStrings:CCN4V2_STE_TRANS_CASAConnectionString %>" SelectCommand="SELECT * FROM [Conducteurs]"></asp:SqlDataSource>
    </p>
    <p class="auto-style6">
        Accidents du coducteur selectionee :
    </p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="numAcc" DataSourceID="SqlDataSourceACCIDENTES">
            <Columns>
                <asp:BoundField DataField="numAcc" HeaderText="numAcc" ReadOnly="True" SortExpression="numAcc" />
                <asp:BoundField DataField="dateAcc" HeaderText="dateAcc" SortExpression="dateAcc" />
                <asp:BoundField DataField="remarques" HeaderText="remarques" SortExpression="remarques" />
                <asp:BoundField DataField="numImmat" HeaderText="numImmat" SortExpression="numImmat" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceACCIDENTES" runat="server" ConnectionString="<%$ ConnectionStrings:CCN4V2_STE_TRANS_CASAConnectionString %>" SelectCommand="SELECT Accidents.numAcc, Accidents.dateAcc, Accidents.remarques, Accidents.numImmat FROM Accidents INNER JOIN Voitures ON Accidents.numImmat = Voitures.numImmat WHERE (Voitures.idConducteur = @idc)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="idc" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
