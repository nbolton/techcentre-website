<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileNotFound.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.FileNotFound" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>File Not Found (404)</title>
    <meta name="robots" content="noindex,nofollow" />
    <link rel="stylesheet" type="text/css" href="~/Styles/Error.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1><span style="color: #EB9526">tech</span><span style="color: #653C7C">centre</span></h1>
        <p>The page or file you requested does not exist or has been removed.</p>
        <h3>Suggestions:</h3>
        <ul>
            <li>Return to the <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">TechCentre home page</asp:HyperLink>.</li>
        </ul>
    </form>
</body>
</html>