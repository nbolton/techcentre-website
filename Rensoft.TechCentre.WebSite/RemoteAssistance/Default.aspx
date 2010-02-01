<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.RemoteAssistance.Default" Title="Remote Assistance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    <h1>Remote Assistance</h1>
    <p>Please enter your support key. If you do not have a support key, please <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Contact.aspx">get in touch with us</asp:HyperLink> so we can issue you with one.</p>
    <p>
        <label>Support Key:</label>
        <asp:TextBox ID="KeyTextBox" runat="server" Width="200px" />
        <asp:Button ID="OkButton" runat="server" Text="OK" OnClick="OkButton_Click" />
    </p>
</asp:Content>
