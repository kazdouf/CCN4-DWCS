<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="MAJVoiture.aspx.cs" Inherits="WebApp.MAJVoiture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            color: #FFFF00;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        MISE A JOUR VOITURES</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="numImmat" DataSourceID="SqlDataSourceVOITURES" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Mettre à jour"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Ajouter" Width="110px" />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Modifier"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Sélectionner"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Supprimer"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="numImmat" SortExpression="numImmat">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("numImmat") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtImmatr" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("numImmat") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="marque" SortExpression="marque">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("marque") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtMarque" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("marque") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="model" SortExpression="model">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("model") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("model") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="puissance" SortExpression="puissance">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("puissance") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtPuissance" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("puissance") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="dateAchat" SortExpression="dateAchat">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("dateAchat") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Calendar ID="dateAchat" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("dateAchat") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="idConducteur" SortExpression="idConducteur">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("idConducteur") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="DDLConduct" runat="server" DataSourceID="SqlDataSourceCONDUCT" DataTextField="nomCond" DataValueField="idCond" Height="16px" Width="129px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCONDUCT" runat="server" ConnectionString="<%$ ConnectionStrings:CCN4V2_STE_TRANS_CASAConnectionString %>" SelectCommand="SELECT [idCond], [nomCond] FROM [Conducteurs]"></asp:SqlDataSource>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("idConducteur") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceVOITURES" runat="server" ConnectionString="<%$ ConnectionStrings:CCN4V2_STE_TRANS_CASAConnectionString %>" DeleteCommand="DELETE FROM [Voitures] WHERE [numImmat] = @numImmat" InsertCommand="INSERT INTO [Voitures] ([numImmat], [marque], [model], [puissance], [dateAchat], [idConducteur]) VALUES (@numImmat, @marque, @model, @puissance, @dateAchat, @idConducteur)" SelectCommand="SELECT * FROM [Voitures]" UpdateCommand="UPDATE [Voitures] SET [marque] = @marque, [model] = @model, [puissance] = @puissance, [dateAchat] = @dateAchat, [idConducteur] = @idConducteur WHERE [numImmat] = @numImmat">
            <DeleteParameters>
                <asp:Parameter Name="numImmat" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="numImmat" Type="Int32" />
                <asp:Parameter Name="marque" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="puissance" Type="String" />
                <asp:Parameter DbType="Date" Name="dateAchat" />
                <asp:Parameter Name="idConducteur" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="marque" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="puissance" Type="String" />
                <asp:Parameter DbType="Date" Name="dateAchat" />
                <asp:Parameter Name="idConducteur" Type="Int32" />
                <asp:Parameter Name="numImmat" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </p>
</asp:Content>
