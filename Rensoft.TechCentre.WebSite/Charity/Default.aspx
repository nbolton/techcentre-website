<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Charity.Default" Title="TechCentre Charity" %>
<%@ Register src="../ContentLoader.ascx" tagname="ContentLoader" tagprefix="uc1" %>
<%@ Register src="../PayPal/PayPalControl.ascx" tagname="PayPalControl" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <uc2:PayPalControl ID="PayPalControl1" runat="server" />
    <uc1:ContentLoader ID="ContentLoader1" runat="server" Filename="Charity/Default.html" />
    <uc2:PayPalControl ID="PayPalControl2" runat="server" />
</asp:Content>
