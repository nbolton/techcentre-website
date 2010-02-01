<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="CustomContent.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.CustomContent" %>
<%@ Register src="PayPal/PayPalControl.ascx" tagname="PayPalControl" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <uc1:PayPalControl ID="PayPalControlTop" runat="server" Visible="False" />
    <asp:Literal ID="CustomContentLiteral" runat="server" Mode="PassThrough" />
    <uc1:PayPalControl ID="PayPalControlBottom" runat="server" Visible="False" />
</asp:Content>