<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.DomainChecker.Default" Title="Domain Checker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <h1>Domain Names</h1>    
    <asp:MultiView ID="MultiView" runat="server">
    
        <asp:View ID="StartView" runat="server">
            <p>Check as many domain names as you like, then give us a call when you've made your decision!</p>
            <asp:Panel ID="Panel1" runat="server" DefaultButton="CheckButton">
                <label style="font-weight: bold">Domain Name:</label>
                <asp:TextBox ID="DomainTextBox" runat="server" />
                <asp:Button ID="CheckButton" runat="server" Text="Check" OnClick="CheckButton_Click" />
            </asp:Panel>
            <p>For example, "mydomain.co.im", or just "mydomain" on its own (without quote marks). All variants of the domain will be shown. WHOIS lookups cannot guarantee the availability of a domain due to private domain reservations.</p>
        </asp:View>
        
        <asp:View ID="ResultsView" runat="server">
            <p>As well as the domain you requested, we've also searched for some variants.</p>
            <table cellpadding="0" cellspacing="0" border="0">
                <asp:Repeater ID="ResultRepeater" runat="server" OnItemDataBound="ResultRepeater_ItemDataBound">
                    <ItemTemplate>
                        <tr class="domainCheckerResult">
                            <td class="domainCheckerDomainName">
                                <asp:Label ID="DomainNameLabel" runat="server" Text="<%# Bind('DomainName') %>" />
                            </td>
                            <td class="domainCheckerAvailability">
                                <asp:Label ID="AvailabilityLabel" runat="server" Text="<%# Bind('Availability') %>" />
                            </td>
                            <td>
                                <asp:HyperLink ID="DetailsHyperLink" runat="server" Target="_blank" Visible="<%# Bind('DetailsVisible') %>" Text="Details" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
             <p>To register your domain names, please <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Contact.aspx">contact us</asp:HyperLink>.</p>
             <p><asp:LinkButton ID="SearchAgain1" runat="server" OnClick="SearchAgain_Click">Search Again</asp:LinkButton></p>
        </asp:View>
        
        <asp:View ID="LengthErrorView" runat="server">
            <p>The length of the domain name must be at least 2 characters. <asp:LinkButton ID="RetryLinkButton1" runat="server" OnClick="RetryLinkButton1_Click">Try again.</asp:LinkButton></p>
        </asp:View>
        
        <asp:View ID="CharsErrorView" runat="server">
            <p>The domain name contained some characters which are not allowed. Domain names can only contain letters, numbers and hyphens (-) and cannot contain spaces. <asp:LinkButton ID="RetryLinkButton2" runat="server" OnClick="RetryLinkButton2_Click">Try again.</asp:LinkButton></p>
        </asp:View>
        
    </asp:MultiView>
    
</asp:Content>
