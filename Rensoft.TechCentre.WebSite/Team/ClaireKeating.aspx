<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="ClaireKeating.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.ClaireKeating" Title="Claire Keating - Meet the Team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamProfile">
        <h1>Claire Keating</h1>
        <h2>Office Administrator</h2>
        <asp:Image ID="Image1" runat="server" AlternateText="Claire Keating" ImageUrl="~/Images/Team/ClaireKeatingLarge.jpg" ImageAlign="Left" />
        <p>Claire has mainly worked in retail, and has joined TechCentre after a long break of being a full time mum. Claire is delighted to be part of such a dynamic and motivated team, and looks forward to her future in the company. Her main roles include Office Administration and Client Account Management.</p>
        <p>Claire is a member of the Isle of Man Karate Federation, and is excited about achieving her black belt. Claire is also a member of Douglas Choral Union and enjoys singing, dancing and acting in stage productions.</p>
        <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team/Default.aspx">Other team members</asp:HyperLink></p>
    </div>
</asp:Content>