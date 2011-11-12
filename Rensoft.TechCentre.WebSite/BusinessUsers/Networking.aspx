<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Networking.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.BusinessUsers.Networking" Title="Networking - Business Users" %>
<%@ Register src="../ContentLoader.ascx" tagname="ContentLoader" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <uc1:ContentLoader ID="ContentLoader1" runat="server" Filename="BusinessUsers/Networking.html" />
</asp:Content>
