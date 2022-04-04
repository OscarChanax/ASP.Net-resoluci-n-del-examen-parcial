<%@ Page Title="Reporte" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ASP.Net_resolución_del_examen_parcial.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </h2>
    <p>
        <asp:Button ID="Button1" runat="server" Height="54px" OnClick="Button1_Click" Text="Mostrar reporte" Width="118px" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>
