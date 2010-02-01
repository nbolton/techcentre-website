<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="RalphChambers.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.RalphChambers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamProfile">
        <h1>Ralph Chambers</h1>
        <h2>Support Engineer</h2>
        <asp:Image ID="Image1" runat="server" AlternateText="Ralph Chambers" ImageUrl="~/Images/Team/RalphChambersLarge.jpg" ImageAlign="Left" />
        <p>Ralph started working in the IT industry over 5 years ago after he graduated from college with a degree in Computer Services Management.</p>
        <p>Before joining Techcentre, he worked for a multi-national electronics firm in Ireland as part of a team that supported a large number of people locally and globally. It is during this time that he gained his experience in the IT field ranging from Cisco products to printers and server support.</p>
        <p>Ralph has recently taken the leap and moved to the Island with his fiancee and their new baby. In his spare time he is taking advantage of all the island has to offer by joining an adventure centre where he enjoys sea kayaking, coast steering and all the wonderful walks on the island.</p>
        <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team/Default.aspx">Other team members</asp:HyperLink></p>
    </div>
</asp:Content>
