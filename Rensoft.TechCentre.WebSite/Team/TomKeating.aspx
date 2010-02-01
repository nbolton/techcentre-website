<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="TomKeating.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.TomKeating" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamProfile">
        <h1>Tom Keating</h1>
        <h2>Sales and Marketing Co-ordinator</h2>
        <asp:Image ID="Image1" runat="server" AlternateText="Tom Keating" ImageUrl="~/Images/Team/TomKeatingLarge.jpg" ImageAlign="Left" />
        <p>Tom has recently joined the company as Sales & Marketing Co-ordinator, after completing a Business Studies degree at University. He is a highly motivated young professional who is looking to hone his skills in a fast moving company like TechCentre. His determination to succeed and undoubted professionalism will see him thrive and ensure his successful future at the company.</p>
        <p>Like his brother, Tom has been on the Isle of Man for over 17 years, having moved over from Manchester. After completing the International Baccalaureate at King William’s College, he returned to Manchester to attend University.</p>
        <p>Tom is a Formula 1 fan, and this stems from his interest in fast and exotic cars. However, when he is not dreaming about which car he wishes he could have, he enjoys travelling, rugby and relaxing with friends.</p>
        <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team/Default.aspx">Other team members</asp:HyperLink></p>
    </div>
</asp:Content>
