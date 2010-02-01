<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DomainWhois.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.DomainChecker.DomainWhois" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head2" runat="server">
    <title>TechCentre Whois</title>
    <link href="~/Styles/Whois.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form2" runat="server">
        <h1>TechCentre Whois</h1>
        <asp:MultiView ID="RootMultiView" runat="server">
            <asp:View ID="ResultsView" runat="server">
                <p><a href="javascript:;" onclick="window.close()">Return to website</a></p>
                <p><asp:Label ID="ResultLabel" runat="server" /></p>
            </asp:View>
            <asp:View ID="ErrorView" runat="server">
                <p>Your browser sent an invalid request. Please close this window and try again.</p>
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
