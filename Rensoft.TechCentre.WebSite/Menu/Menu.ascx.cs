using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;

namespace Rensoft.TechCentre.WebSite.Menu
{
    public partial class Menu : System.Web.UI.UserControl
    {
        private List<MenuDropDown> dropDowns;

        public List<MenuDropDown> DropDowns
        {
            get { return dropDowns; }
        }

        public Menu()
        {
            this.dropDowns = new List<MenuDropDown>();
            Load += new EventHandler(Menu_Load);
        }

        void Menu_Load(object sender, EventArgs e)
        {
            DropDownRepeater.DataSource = dropDowns;
            DropDownRepeater.DataBind();
        }

        protected void DropDownRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            MenuDropDown dropDown = e.Item.DataItem as MenuDropDown;
            Repeater DropDownItemRepeater = e.Item.FindControl("DropDownItemRepeater") as Repeater;
            HtmlControl DropDownListItem = e.Item.FindControl("DropDownListItem") as HtmlControl;
            HtmlControl DropDownButtonLayer = e.Item.FindControl("DropDownButtonLayer") as HtmlControl;
            HtmlControl DropDownLayer = e.Item.FindControl("DropDownLayer") as HtmlControl;

            DropDownListItem.Attributes["onmouseover"] =
                "showDropDown('" + DropDownButtonLayer.ClientID + 
                "', '" + DropDownLayer.ClientID + "')";

            DropDownButtonLayer.Attributes["onclick"] =
                "menuClick('" + ResolveUrl(dropDown.NavigateUrl) + "')";

            DropDownItemRepeater.DataSource = dropDown.Items;
            DropDownItemRepeater.DataBind();
        }

        protected void DropDownItemRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            MenuDropDownItem dropDownItem = e.Item.DataItem as MenuDropDownItem;
            HtmlControl DropDownItemLayer = e.Item.FindControl("DropDownItemLayer") as HtmlControl;

            DropDownItemLayer.Attributes["onclick"] =
                "menuClick('" + ResolveUrl(dropDownItem.NavigateUrl) + "')";
        }
    }
}