<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.Net_resolución_del_examen_parcial._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 aria-orientation="horizontal">&nbsp;ASP.NET</h1>
        <h2 id="yui_3_17_2_1_1648857027851_48" style="border-style: none; border-color: inherit; border-width: medium; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 400; line-height: 2rem; font-size: 1.75rem; color: rgb(73, 80, 87); font-family: Lato; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; width: 602px;">Laboratorio #8 resolución del examen parcial</h2>

    <div class="row">
       
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:TextBox ID="TextBoxGrado" runat="server" OnTextChanged="TextBox1_TextChanged" Width="236px"></asp:TextBox>
        &nbsp;<asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" Text="Ingresar" Width="66px" ForeColor="Black" />
       
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxGrado" ErrorMessage="RangeValidator" MaximumValue="6" MinimumValue="1" SetFocusOnError="True" Type="Integer">Solo se permiten números entre 1 y 6</asp:RangeValidator>
       
    </div>

    </div>

    </asp:Content>
