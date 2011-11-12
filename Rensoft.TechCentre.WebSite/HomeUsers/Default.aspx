<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.HomeUsers.Default" Title="Home Users" %>
<%@ Register src="../ContentLoader.ascx" tagname="ContentLoader" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <uc1:ContentLoader ID="ContentLoader1" runat="server" Filename="HomeUsers/Default.html" />
</asp:Content>
