<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.Profile" Title="Meet the Team" %>
<%@ Register src="../ContentLoader.ascx" tagname="ContentLoader" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamProfile">
        <uc1:ContentLoader ID="ContentLoader1" runat="server" />
    </div>
    <div style="clear: both"></div>
</asp:Content>
