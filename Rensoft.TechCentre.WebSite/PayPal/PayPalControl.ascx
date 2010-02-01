<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PayPalControl.ascx.cs" Inherits="Rensoft.TechCentre.WebSite.PayPal.PayPalControl" %>
<div style="margin-top: 5px; margin-bottom: 15px; text-align: center; width: 450px">
    <input type="hidden" name="cmd" value="_s-xclick">
    <input type="hidden" name="hosted_button_id" value="6225882">
    <asp:ImageButton ID="PayPalImageButton" runat="server" PostBackUrl="https://www.paypal.com/cgi-bin/webscr" ImageUrl="https://www.paypal.com/en_GB/i/btn/btn_donateCC_LG.gif" AlternateText="PayPal - The safer, easier way to pay online." /> 
</div>