<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="MandySayle.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.MandySayle" Title="Mandy Sayle - Meet the Team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamProfile">
        <h1>Mandy Shields</h1>
        <h2>Office Manager</h2>
        <asp:Image ID="Image1" runat="server" AlternateText="Mandy Sayle" ImageUrl="~/Images/Team/MandySayleLarge.jpg" ImageAlign="Left" />
        <p>Mandy has worked at TechCentre since October 2007 as our Office Manager &amp; Coordinator. She has a wealth of knowledge and experience from her 9½ years at a local law firm. Mandy enjoys the daily interaction with TechCentre clients and as the first port of call, feels that a friendly and helpfull attitude comes in very handy when problems arise.</p>
        <p>When Mandy is not working she enjoys yoga, walking, reading and spending time with her Husband and daughter.</p>
        <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team/Default.aspx">Other team members</asp:HyperLink></p>
    </div>
</asp:Content>
