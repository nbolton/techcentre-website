<%@ Page Language="C#" MasterPageFile="~/RootMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Default" Title="TechCentre - Microsoft Gold Certified - Isle of Man" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div class="homeSplash" id="SplashLayer" runat="server">&nbsp;</div>
    <div class="homeIcons">
        <div class="homeIconsItem">
            <div class="homeIconsItemImage">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/BusinessUsers/Default.aspx">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Home/HomeIconBusinessUsers.gif" />
                </asp:HyperLink>
            </div>
            <div class="homeIconsItemText">
                <h1><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/BusinessUsers/Default.aspx">Business Users</asp:HyperLink></h1>
                <p>Central management of data and communications.</p>
            </div>
        </div>
        <div class="homeIconsItem">
            <div class="homeIconsItemImage">
                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/HomeUsers/Default.aspx">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Home/HomeIconHomeUsers.gif" />
                </asp:HyperLink>
            </div>
            <div class="homeIconsItemText">
                <h1><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/HomeUsers/Default.aspx">Home Users</asp:HyperLink></h1>
                <p>Safe, secure and reliable home PCs with support.</p>
            </div>
        </div>
        <div class="homeIconsItem">
            <div class="homeIconsItemImage">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/RemoteAssistance/Default.aspx">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Home/HomeIconRemoteAssistance.gif" />
                </asp:HyperLink>
            </div>
            <div class="homeIconsItemText">
                <h1><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RemoteAssistance/Default.aspx">Remote Assistance</asp:HyperLink></h1>
                <p>Our effective, professional and certified support service.</p>
            </div>
        </div>
        <div class="homeIconsItem">
            <div class="homeIconsItemImage">
                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/DisasterRecovery/Default.aspx">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/Home/HomeIconDisasterRecovery.gif" />
                </asp:HyperLink>
            </div>
            <div class="homeIconsItemText">
                <h1><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/DisasterRecovery/Default.aspx">Disaster Recovery</asp:HyperLink></h1>
                <p>Plan for the future, with our disaster recovery solutions.</p>
            </div>
        </div>
        <div class="homeIconsItem">
            <div class="homeIconsItemImage">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/DataRecovery/Default.aspx">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Home/HomeIconDataRecovery.gif" />
                </asp:HyperLink>
            </div>
            <div class="homeIconsItemText">
                <h1><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DataRecovery/Default.aspx">Data Recovery</asp:HyperLink></h1>
                <p>Recovery of data with an excellent success rate.</p>
            </div>
        </div>
        <div class="homeIconsItem">
            <div class="homeIconsItemImage">
                <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/DomainChecker/Default.aspx">
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/Home/HomeIconDomainChecker.gif" />
                </asp:HyperLink>
            </div>
            <div class="homeIconsItemText">
                <h1><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/DomainChecker/Default.aspx">Domain Checker</asp:HyperLink></h1>
                <p>Check and register your domain with us.</p>
            </div>
        </div>
    </div>
    <div class="homeSocial">
        <div>
            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="http://www.facebook.com/techcentre" Target="_blank"><asp:Image ID="Image7" runat="server" ImageUrl="~/Images/Home/HomeIconFacebook.png" /></asp:HyperLink>
            <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="http://www.twitter.com/techcentre_iom" Target="_blank"><asp:Image ID="Image8" runat="server" ImageUrl="~/Images/Home/HomeIconTwitter.png" /></asp:HyperLink>
        </div>
        <div style="padding-top: 10px; font-weight: bold">Follow us:</div>
    </div>
</asp:Content>
