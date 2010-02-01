<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="Rensoft.TechCentre.WebSite.Menu.Menu" %>
<ul>
    <asp:Repeater ID="DropDownRepeater" runat="server" OnItemDataBound="DropDownRepeater_ItemDataBound">
        <ItemTemplate>
            <li id="DropDownListItem" onmouseout="hideDropDown()" runat="server">
                <div id="DropDownButtonLayer" class="layoutMenuButtonMouseOut" runat="server">
                    <asp:Label ID="ButtonLabel" runat="server" Text="<%# Bind('Text') %>" />
                </div>
                <div id="DropDownLayer" class="layoutMenuDropDownHidden" runat="server">
                    <ul>
                        <asp:Repeater ID="DropDownItemRepeater" runat="server"  OnItemDataBound="DropDownItemRepeater_ItemDataBound">
                            <ItemTemplate>
                                <li>
                                    <div id="DropDownItemLayer" runat="server" class="layoutMenuDropDownItemMouseOut" onmouseover="dropDownItemMouseOver(this)" onmouseout="dropDownItemMouseOut(this)">
                                        <asp:Label ID="DropDownItemLabel" runat="server" Text="<%# Bind('Text') %>" />
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </li>
        </ItemTemplate>
    </asp:Repeater>
</ul>