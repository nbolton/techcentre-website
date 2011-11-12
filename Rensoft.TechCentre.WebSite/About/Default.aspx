<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.About.Default" Title="About TechCentre" %>
<%@ Register src="../ContentLoader.ascx" tagname="ContentLoader" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <uc1:ContentLoader ID="ContentLoader1" runat="server" Filename="About/Default.html" />
</asp:Content>
