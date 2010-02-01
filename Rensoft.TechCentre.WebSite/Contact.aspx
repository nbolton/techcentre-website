<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Contact" Title="Contact" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <h1>Contact</h1>
    <p>Do you have a question, comment or suggestion? We always apreciate customer feedback.</p>
    
    <ul>
        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Team/Default.aspx">Meet the team</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/About/HowToFind.aspx">How to find us (map)</asp:HyperLink></li>
    </ul>
    
    <h2>Phone/Fax</h2>
    <p>
        <label>Phone:</label> +44 (0)1624 665859<br />
        <label>Fax:</label> +44 (0)1624 665860
    </p>
    
    <h2>Online</h2>
    <asp:MultiView ID="ContactMultiView" runat="server">
        <asp:View ID="ContactStartView" runat="server">
            <asp:Panel ID="Panel1" runat="server" DefaultButton="ContactAcceptButton">
                <asp:Panel ID="CaptchaPanel" runat="server" Visible="false">
                    <p style="color: Red">Please confirm that you have entered the verification code correctly.</p>
                </asp:Panel>
                <table cellpadding="0" cellspacing="0" class="contactForm">
                    <tr>
                        <th>Name:</th>
                        <td><asp:TextBox ID="NameTextBox" runat="server" Width="200px" /></td>
                    </tr>
                    <tr>
                        <th>Company:</th>
                        <td><asp:TextBox ID="CompanyTextBox" runat="server" Width="200px" /></td>
                    </tr>
                    <tr>
                        <th>Phone number:</th>
                        <td><asp:TextBox ID="PhoneNumberTextBox" runat="server" Width="200px" /></td>
                    </tr>
                    <tr>
                        <th>Email address:</th>
                        <td><asp:TextBox ID="EmailAddressTextBox" runat="server" Width="200px" /></td>
                    </tr>
                    <tr>
                        <th>Comments:</th>
                        <td><asp:TextBox ID="CommentsTextBox" runat="server" TextMode="MultiLine" Width="200px" Height="100px" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <cc1:CaptchaControl ID="CaptchaControl1" runat="server" CaptchaBackgroundNoise="Low" CaptchaLength="5" CaptchaHeight="60" CaptchaWidth="200" CaptchaLineNoise="Low" CaptchaMinTimeout="5" CaptchaMaxTimeout="240" />
                            Please type the above code in the verification field.
                        </td>
                    </tr>
                    <tr>
                        <th>Verification:</th>
                        <td><asp:TextBox ID="CaptchaTextBox" runat="server" Width="200px" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div id="sendStatusLayer" style="visibility:hidden; position:absolute; color:Green">Please wait, sending contact form...</div>                            
                            <div><asp:Button ID="ContactAcceptButton" runat="server" Text="Send contact form" OnClick="ContactAcceptButton_Click" OnClientClick="this.style.visibility='hidden';sendStatusLayer.style.visibility='visible'" /></div>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </asp:View>
        <asp:View ID="ContactFinishView" runat="server">
            <p class="contactFinish">Thank you for contacting us! We will reply soon.</p>
        </asp:View>
    </asp:MultiView>
    
    <h2>Postal</h2>
    <p>
        TechCentre<br />
        Technology House<br />
        97 Woodbourne Road<br />
        Douglas<br />
        Isle of Man<br />
        IM1 3AW<br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/About/HowToFind.aspx">See on map</asp:HyperLink>
    </p>
</asp:Content>