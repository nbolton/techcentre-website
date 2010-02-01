<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="HowToFind.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.About.HowToFind" Title="How to find us (map)" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    
    <h1>How to find TechCentre</h1>
    <asp:Image ID="OfficeImage" runat="server" ImageUrl="~/Images/About/Office.jpg" AlternateText="The TechCentre Office" />
    <p>Use our interactive map of Douglas to easily find your way around. You can also print the map and take it with you.</p>
    
    <div class="mapIcons">
        <a href="javascript:;" onclick="alert('Please ensure popups are allowed.'); VEOpenPrint(); return false;"><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Standard/PrintIcon.gif" /></a>
        <div class="mapIconsText"><a href="javascript:;" onclick="alert('Please ensure popups are allowed.'); VEOpenPrint(); return false;">Print</a></div>
    </div>
    <div id="liveMap" class="mapLayer"></div>
    
</asp:Content>
