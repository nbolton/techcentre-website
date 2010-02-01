<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HowToFindPrint.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.About.HowToFindPrint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>How to find TechCentre</title>
    <link type="text/css" href="~/Styles/MapPrint.css" rel="stylesheet" />
    <script type="text/javascript" src="http://dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=6.1"></script>
    <script type="text/javascript" src="<%=Request.ApplicationPath%>JScript/LiveMap.js"></script>
</head>
<body onload="VELoad()">
    <form id="form1" runat="server">
        <div>
            <div class="topBar">
                <div class="topBarTitle">
                    How to find TechCentre
                </div>
                <div class="topBarIcons">
                    <a href="javascript:window.print();"><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Standard/PrintIcon.gif" /></a>
                    <div class="topBarIconsText"><a href="javascript:window.print();">Print</a></div>
                </div>
            </div>
            <div id="liveMap" class="mapLayer"></div>
        </div>
    </form>
</body>
</html>
