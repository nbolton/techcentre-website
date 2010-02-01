<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="GavinWilby.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.GavinWilby" Title="Gavin Wilby - Meet the Team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamProfile">
        <h1>Gavin Wilby</h1>
        <h2>Senior Support Engineer</h2>
        <asp:Image ID="Image1" runat="server" AlternateText="Gavin Wilby" ImageUrl="~/Images/Team/GavinWilbyLarge.jpg" ImageAlign="Left" />
        <p>Gavin has been in the IT industry for over 14 years on the Isle of Man. Starting out in Technical Design, he moved into a Customer Support role for one of the Isle of Man’s first major Internet Service Providers, he then went on to provide Network, Server and Application Support for a large financial company that covers sites worldwide.</p>
        <p>Gavin is now starting his 5th year at TechCentre as a Senior Support Engineer, continuing to provide  the high level of Technical Support and Customer Relations that our clients have come to expect.</p>
        <p>Already having attained MSCE qualifications for Microsoft Windows Server 2000 and Windows Server 2003, this year he completed the requirements to be qualified as an MSTS and MCITP for Windows Server 2008. Currently he is expanding his technical knowledge by embarking on Apple Macintosh’s certification, bringing further expertise to the technical team.</p>
        <p>He is married to Angela and lives in Peel with their 3 cats.</p>
        <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team/Default.aspx">Other team members</asp:HyperLink></p>
    </div>
</asp:Content>
