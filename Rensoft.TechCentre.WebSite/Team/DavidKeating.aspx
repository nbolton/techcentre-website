<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="DavidKeating.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.DavidKeating" Title="David Keating - Meet the Team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamProfile">
        <h1>David Keating</h1>
        <h2>Managing Director</h2>
        <asp:Image ID="Image1" runat="server" AlternateText="David Keating" ImageUrl="~/Images/Team/DavidKeatingLarge.jpg" ImageAlign="Left" />
        <p>David has been with the company over 8 years, with his main objectives being Client Account Manager, Purchasing &amp; leading the company on a day to day basis. He has over 15 years experience in the IT field, ranging from printers, photocopiers and networking to software, workstations and servers. During college he was offered a job on day release working for a local IT firm, there David grew his skills to the position he is in today.</p>
        <p>Having been on the island for over 17 years, David was originally from Manchester, he worked for his father from an early age in his clothing shops and market stalls. Come rain or shine, David would be out selling fashion clothing to ladies up and down the north west. David commented that "having a cheeky smile, and a rapport with your client is the best selling technique you can have. I don’t agree with hard sell, because the client knows what they want and they know their budget."</p>
        <p>Family man David is engaged to Claire, they have two young children, Jordan and Jessica and a bouncy dog called freckles.</p>
        <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team/Default.aspx">Other team members</asp:HyperLink></p>
    </div>
</asp:Content>
