<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.About.Default" Title="About TechCentre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    
    <h1>About TechCentre</h1>
    <p>TechCentre has been running since January 2001. It was founded as Naylor Computer Services (NCSL) by Christian Naylor. Now with his business Partner David Keating, they have formed TechCentre Ltd and have built the company on a solid footing providing professional, dedicated & cost effective IT Support for the Isle of Man.</p>
    <ul>
        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team/Default.aspx">Meet the team</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/About/HowToFind.aspx">How to find us (map)</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Contact.aspx">Contact us today</asp:HyperLink></li>
    </ul>
    
    <h2>Careers with TechCentre</h2>
    <p>We are always on the lookout for Professional employees that would complement the hard working, team players of TechCentre. Drop us a line, with what you can offer TechCentre and we can talk about your future with us.</p>
	<p>We have had a lot of email and phone calls from India and Asia in regard to a recruitment campaign that we are having in those countries. We are not recruiting anyone at present and we are not asking anyone to take exams or tests to qualify for an application. Please go back and contact your representative in your country as this looks to be a scam. If you are outside the UK, do not contact us, we cannot help.</P>
</asp:Content>
