<%@ Page Language="C#" MasterPageFile="~/StandardMaster.Master" AutoEventWireup="true" CodeBehind="Sudoku.aspx.cs" Inherits="Rensoft.TechCentre.WebSite.Sudoku" Title="Sudoku sponsored by TechCentre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StandardContentPlaceHolder" runat="server">
    
    <h1>Sudoku Winners</h1>
    <p>The new Manx Tails Sudoku competition is sponsored by TechCentre.</p>
    
    <h2>September 2008 Winner</h2>
    <p><b>This month's winner is Pat Mitchell from Lonan!</b></p>
    
    <asp:HyperLink ID="HyperLink5" runat="server" Target="_blank" NavigateUrl="~/Images/Sudoku/Sudoku-September-2008.pdf">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Sudoku/Sudoku-September-2008.gif" AlternateText="Sudoku results" />
    </asp:HyperLink>
    
    <h2>Previous Winners</h2>
    <ul>
        <li><asp:HyperLink ID="HyperLink4" runat="server" Target="_blank" NavigateUrl="~/Images/Sudoku/Sudoku-June-2008.pdf">June 2008</asp:HyperLink> (Jon Quilliam from Onchan)</li>
        <li><asp:HyperLink ID="HyperLink3" runat="server" Target="_blank" NavigateUrl="~/Images/Sudoku/Sudoku-July-2008.pdf">July 2008</asp:HyperLink> (Irene Beck from Ramsey)</li>
        <li><asp:HyperLink ID="HyperLink6" runat="server" Target="_blank" NavigateUrl="~/Images/Sudoku/Sudoku-August-2008.pdf">August 2008</asp:HyperLink> (Margery Quine from Union Mills)</li>
    </ul>
    
    <p>We <b>guarantee</b> to beat* your existing fees! <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Contact.aspx">Contact us today</asp:HyperLink>.</p>
    <ul>
        <li>14 day warranty</li>
        <li>24 hour service</li>
        <li>Microsoft Gold accredited</li>
        <li><em>TechCare</em> IT support for business</li>
        <li>Home PC health checks</li>
    </ul>
    
    <p style="font-size: .8em">* Please read our <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TermsAndConditions.aspx">Terms and Conditions</asp:HyperLink>.</p>
            
</asp:Content>
