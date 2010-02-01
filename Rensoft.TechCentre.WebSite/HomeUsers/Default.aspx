<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.HomeUsers.Default" Title="Home Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    
    <h1>Home Users</h1>
    <p>Having problems with your computer or laptop? TechCentre are able to help. We can offer a home visit or a drop off service where our engineers can repair your machine in our workshop. Typical repairs undertaken on a day to day basis.</p>
    <ul>
        <li>Wireless Installation</li>
        <li>Virus Removal</li>
        <li>Spyware/Pop-up Removal</li>
        <li>Anti-Virus Installation</li>
        <li>Data Recover (Link)</li>
        <li>Memory Upgrade</li>
        <li>Hard Drive Upgrade</li>
        <li>Printer Installations</li>
        <li>Data Backup</li>
    </ul>
    <p>We also sell computers and laptops, <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Contact.aspx">drop us a line</asp:HyperLink> to see what offers we have.</p>
</asp:Content>
