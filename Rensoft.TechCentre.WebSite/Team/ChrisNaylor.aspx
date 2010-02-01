<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="ChrisNaylor.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.ChrisNaylor" Title="Chris Naylor - Meet the Team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamProfile">
        <h1>Christian Naylor</h1>
        <h2>Director</h2>
        <asp:Image ID="Image1" runat="server" AlternateText="Christian Naylor" ImageUrl="~/Images/Team/ChrisNaylorLarge.jpg" ImageAlign="Left" />
        <p>Founder, co-owner and self confessed UBER-GEEK, Christian Naylor founded TechCentre with the single objective of providing the best IT support for companies and individuals in the Isle of Man.  Chris believed that too many companies were being poorly serviced by there IT providers and he wanted to “raise the bar” so the client (whatever size they are) were serviced by qualified and competent engineers.</p>
        <p>Born in the 1970’s Chris saw the birth of the “Information Revolution”. His fist experience of computing was helping his mother create the ”Punch Cards” used for printing her University thesis.  Chris was fascinated by the lights and sounds created by this “wall of machinery” and this he believes was the inspiration behind his lifelong love of all things computing.</p>
        <ul>
            <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Team/ChrisNaylor.pdf" Target="_blank">Read Chris' full story PDF</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team/Default.aspx">See more team members</asp:HyperLink></li>
        </ul>
    </div>
</asp:Content>
