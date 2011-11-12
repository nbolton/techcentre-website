<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.Default" Title="Meet the Team" %>
<%@ Register src="../ContentLoader.ascx" tagname="ContentLoader" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamIndex">
        <uc1:ContentLoader ID="ContentLoader1" runat="server" Filename="Team/Default.html" />
    </div>
</asp:Content>
