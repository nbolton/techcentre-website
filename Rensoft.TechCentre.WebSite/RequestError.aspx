<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestError.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.RequestError" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head2" runat="server">
    <title>Request Error</title>
    <meta name="robots" content="noindex,nofollow" />
    <link rel="stylesheet" type="text/css" href="~/Styles/Error.css" />
</head>
<body>
    <form id="form2" runat="server">
        <h1><span style="color: #EB9526">tech</span><span style="color: #653C7C">centre</span></h1>
        <p>A potentially dangerous or unsupported request was recieved from your computer.</p>
        <h3>Suggestions:</h3>
        <ul>
            <li>Ensure that your anti-virus software is installed and up to date.</li>
            <li>Try using an alternative web browser such as <a href="http://www.microsoft.com/windows/products/winfamily/ie/default.mspx" target="_blank">Internet Explorer</a> or <a href="http://www.mozilla.com/firefox/" target="_blank">Firefox</a>.</li>
            <li>Return to the <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">TechCentre home page</asp:HyperLink>, and try again.</li>
        </ul>
    </form>
</body>
</html>
