<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="WesleyKitching.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Team.WesleyKitching" Title="Wesley Kitching - Meet the Team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <div class="teamProfile">
        <h1>Wesley Kitching</h1>
        <h2>Support Engineer</h2>
        <asp:Image ID="Image1" runat="server" AlternateText="Wesley Kitching" ImageUrl="~/Images/Team/WesleyKitchingLarge.jpg" ImageAlign="Left" />
        <p>Wesley started in the IT industry a little over 7 years ago, working for a large IT company on the Island. He was mainly contracted out to local firms and Government bodies. During his time he gained many skills in IT as well as skills in communication, presentation and project management.</p>
        <p>Leaving this role he moved to a smaller local firm to concentrate on the private sector of the market. supporting small to medium sized businesses means a personal touch can be installed. Wesley wanted to further his knowledge by undertaking more Server support work which is exactly what he does with TechCentre. Being able to complete a job from start to finish, regardless of where the fault may lie, has great satisfaction for Wesley.</p>
        <p>Wesley is a Microsoft Certified Professional and is currently studying for his new exams for Server 2008. In his spare time he likes clubbing and playing football for a local Isle of man team, St Johns United AFC.</p>
        <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Team/Default.aspx">Other team members</asp:HyperLink></p>
    </div>
</asp:Content>
