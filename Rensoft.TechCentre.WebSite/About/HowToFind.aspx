<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="HowToFind.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.About.HowToFind" Title="How to find us (map)" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    
    <h1>How to find TechCentre</h1>
    <p>Use our interactive map of Douglas to easily find your way around. You can also print the map and take it with you.</p>
    
    <div class="mapIcons">
        <asp:HyperLink ID="HyperLink23" runat="server" NavigateUrl="~/About/HowToFindPrint.aspx" Target="_blank"><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Standard/PrintIcon.gif" /></asp:HyperLink>
        <div class="mapIconsText"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/About/HowToFindPrint.aspx" Target="_blank">Print</asp:HyperLink></div>
    </div>
    <div id="mapDiv" class="mapLayer"></div>
    <script type="text/javascript">
        GetMap();
    </script>
    <p>
        TechCentre<br />
        Technology House<br />
        Woodbourne Lane<br />
        Douglas<br />
        Isle of Man<br />
        IM1 3LJ<br />
    </p>
    
</asp:Content>
