<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.BusinessUsers.Default" Title="Business Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    
    <h1>Business Users</h1>
    <p>If you require IT support for your Business, then we can help. We can support any type or size of company, from single computers to interconnecting offices around the world. Our Team of dedicated engineers can support your existing infrastructure or tailor make a system that will fit your needs as well as your budget.</p>
    <ul>
        <li>Microsoft Gold accredited</li>
        <li>24 hour emergency service</li>
        <li>14 day warranty on work completed</li>
        <li>View and log jobs over the internet, past and present</li>
        <li>Response times to suit your needs</li>
		<li>Emergency Server Cover (Lifeguard policy)</li>
    </ul>
    
    <h2>Services</h2>
    <ul>
        <li><asp:HyperLink ID="HyperLink1" NavigateUrl="~/BusinessUsers/Backup.aspx" runat="server">Backup</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink2" NavigateUrl="~/BusinessUsers/AntiVirus.aspx" runat="server">Anti-Virus</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink3" NavigateUrl="~/BusinessUsers/Networking.aspx" runat="server">Networking</asp:HyperLink></li>
    </ul>
    
</asp:Content>
