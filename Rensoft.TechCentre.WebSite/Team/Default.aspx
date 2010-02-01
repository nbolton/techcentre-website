<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.Default" Title="Meet the Team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamIndex">
        
        <h1 style="padding-left: 5px">Meet the Team</h1>
        <asp:Image ID="EveryoneImage" runat="server" ImageUrl="~/Images/Team/Everyone2.jpg" AlternateText="The TechCentre Team" />
        <p style="padding-left: 5px">Our team is the life blood of our company. Find out what part they will play in serving your company!</p>
        
        <ul>
            <li>
                <div class="teamIndexImage">
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Team/DavidKeating.aspx">
                        <asp:Image ID="Image3" runat="server" AlternateText="David Keating" ImageUrl="~/Images/Team/DavidKeatingSmall.jpg" />
                    </asp:HyperLink>
                </div>
                <div class="teamIndexText">
                    <h2><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Team/DavidKeating.aspx">David Keating</asp:HyperLink></h2>
                    <h3>Managing Director</h3>
                    <p>David has been with the company over 7 years, leading the company on a day to day basis. <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Team/DavidKeating.aspx">Read David’s story</asp:HyperLink>.</p>
                </div>
            </li>
            <li>
                <div class="teamIndexImage">
                    <asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/Team/ChrisNaylor.aspx">
                        <asp:Image ID="Image7" runat="server" AlternateText="Christian Naylor" ImageUrl="~/Images/Team/ChrisNaylorSmall.jpg" />
                    </asp:HyperLink>
                </div>
                <div class="teamIndexText">
                    <h2><asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/Team/ChrisNaylor.aspx">Christian Naylor</asp:HyperLink></h2>
                    <h3>Director</h3>
                    <p>Co-owner and self confessed UBER-GEEK, Christian Naylor founded TechCentre. <asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/Team/ChrisNaylor.aspx">Read Chris’ story</asp:HyperLink>.</p>
                </div>
            </li>
            <li>
                <div class="teamIndexImage">
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Team/MandySayle.aspx">
                        <asp:Image ID="Image4" runat="server" AlternateText="Mandy Sayle" ImageUrl="~/Images/Team/MandySayleSmall.jpg" />
                    </asp:HyperLink>
                </div>
                <div class="teamIndexText">
                    <h2><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Team/MandySayle.aspx">Mandy Sayle</asp:HyperLink></h2>
                    <h3>Office Manager</h3>
                    <p>Mandy is our Office Manager &amp; Coordinator here at TechCentre. <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Team/MandySayle.aspx">Read Mandy’s story</asp:HyperLink>.</p>
                </div>
            </li>
            <li>
                <div class="teamIndexImage">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Team/GavinWilby.aspx">
                        <asp:Image ID="Image2" runat="server" AlternateText="Gavin Wilby" ImageUrl="~/Images/Team/GavinWilbySmall.jpg" />
                    </asp:HyperLink>
                </div>
                <div class="teamIndexText">
                    <h2><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Team/GavinWilby.aspx">Gavin Wilby</asp:HyperLink></h2>
                    <h3>Senior Support Engineer</h3>
                    <p>Gavin is now starting his 4th year at TechCentre as a Senior Support Engineer. <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Team/GavinWilby.aspx">Read Gavin’s story</asp:HyperLink>.</p>
                </div>
            </li>
            <li>
                <div class="teamIndexImage">
                    <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Team/WesleyKitching.aspx">
                        <asp:Image ID="Image5" runat="server" AlternateText="Wesley Kitching" ImageUrl="~/Images/Team/WesleyKitchingSmall.jpg" />
                    </asp:HyperLink>
                </div>
                <div class="teamIndexText">
                    <h2><asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/Team/WesleyKitching.aspx">Wesley Kitching</asp:HyperLink></h2>
                    <h3>Support Engineer</h3>
                    <p>Wesley is a Microsoft Certified Professional, working on server support. <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Team/WesleyKitching.aspx">Read Wesley’s story</asp:HyperLink>.</p>
                </div>
            </li>
            <li>
                <div class="teamIndexImage">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team/TomKeating.aspx">
                        <asp:Image ID="Image1" runat="server" AlternateText="Tom Keating" ImageUrl="~/Images/Team/TomKeatingSmall.jpg" />
                    </asp:HyperLink>
                </div>
                <div class="teamIndexText">
                    <h2><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Team/TomKeating.aspx">Tom Keating</asp:HyperLink></h2>
                    <h3>Sales and Marketing Co-ordinator</h3>
                    <p>Tom has recently joined the company as our Sales &amp; Marketing Co-ordinator. <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Team/TomKeating.aspx">Read Tom’s story</asp:HyperLink>.</p>
                </div>
            </li>
            <li>
                <div class="teamIndexImage">
                    <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Team/RalphChambers.aspx">
                        <asp:Image ID="Image6" runat="server" AlternateText="Ralph Chambers" ImageUrl="~/Images/Team/RalphChambersSmall.jpg" />
                    </asp:HyperLink>
                </div>
                <div class="teamIndexText">
                    <h2><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/Team/RalphChambers.aspx">Ralph Chambers</asp:HyperLink></h2>
                    <h3>Support Engineer</h3>
                    <p>Ralph has recently joined the company as a Support Engineer. <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/Team/RalphChambers.aspx">Read Ralph’s story</asp:HyperLink>.</p>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>
