<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="ListeDocs.aspx.cs" Inherits="WebAppCCN4V2.Students.ListeDocs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            font-size: xx-large;
            color: #FF9900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        LISTE DES DOCUMENTES</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codeDoc" DataSourceID="SqlDataSourceDocs">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="codeDoc" HeaderText="codeDoc" ReadOnly="True" SortExpression="codeDoc" />
                <asp:BoundField DataField="descriptionDoc" HeaderText="descriptionDoc" SortExpression="descriptionDoc" />
                <asp:TemplateField HeaderText="dossierDoc" SortExpression="dossierDoc">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dossierDoc") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# Bind("dossierDoc") %>' Text='<%# Bind("dossierDoc") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="dateEnvoi" HeaderText="dateEnvoi" SortExpression="dateEnvoi" />
                <asp:BoundField DataField="etatDoc" HeaderText="etatDoc" SortExpression="etatDoc" />
                <asp:BoundField DataField="codeTheme" HeaderText="codeTheme" SortExpression="codeTheme" />
                <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceDocs" runat="server" ConnectionString="<%$ ConnectionStrings:CCN4_DWCS_V1_ETABLISEMENTConnectionString %>" DeleteCommand="DELETE FROM [Documents] WHERE [codeDoc] = @codeDoc" InsertCommand="INSERT INTO [Documents] ([codeDoc], [descriptionDoc], [dossierDoc], [dateEnvoi], [etatDoc], [codeTheme], [login]) VALUES (@codeDoc, @descriptionDoc, @dossierDoc, @dateEnvoi, @etatDoc, @codeTheme, @login)" SelectCommand="SELECT * FROM [Documents] WHERE ([login] = @login)" UpdateCommand="UPDATE [Documents] SET [descriptionDoc] = @descriptionDoc, [dossierDoc] = @dossierDoc, [dateEnvoi] = @dateEnvoi, [etatDoc] = @etatDoc, [codeTheme] = @codeTheme, [login] = @login WHERE [codeDoc] = @codeDoc">
            <DeleteParameters>
                <asp:Parameter Name="codeDoc" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="codeDoc" Type="Int32" />
                <asp:Parameter Name="descriptionDoc" Type="String" />
                <asp:Parameter Name="dossierDoc" Type="String" />
                <asp:Parameter DbType="Date" Name="dateEnvoi" />
                <asp:Parameter Name="etatDoc" Type="String" />
                <asp:Parameter Name="codeTheme" Type="Int32" />
                <asp:Parameter Name="login" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="login" SessionField="login" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="descriptionDoc" Type="String" />
                <asp:Parameter Name="dossierDoc" Type="String" />
                <asp:Parameter DbType="Date" Name="dateEnvoi" />
                <asp:Parameter Name="etatDoc" Type="String" />
                <asp:Parameter Name="codeTheme" Type="Int32" />
                <asp:Parameter Name="login" Type="String" />
                <asp:Parameter Name="codeDoc" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
