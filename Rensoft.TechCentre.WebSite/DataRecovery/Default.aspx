<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.DataRecovery.Default" Title="Data Recovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <h1>Data Recovery</h1>
    <p>TechCentre are able to provide professional Data Recovery for your important data from most media devices.</p>
    <ul>
        <li>Floppy Disk</li>
        <li>CD</li>
        <li>DVD</li>
        <li>Hard Drive</li>
        <li>Memory Stick</li>
    </ul>
    <p>In the unlikely event we are unable to recover your data, we also have partners in the UK that can dismantle your device into its core components, and recover the data segment by segment.</p>
    <p>Call us to discuss your requirements, and we can provide impartial advice on the best course of action.</p>
    <p>Your data is important; we can also advise you on how to protect it by <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/BusinessUsers/Backup.aspx">backing up</asp:HyperLink>.</p>
</asp:Content>
