using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;

namespace Rensoft.TechCentre.WebSite.Menu
{
    public class MenuDropDown
    {
        private string name;
        private string text;
        private string navigateUrl;
        private List<MenuDropDownItem> items;

        public string Name
        {
            get { return name; }
        }

        public string Text
        {
            get { return text; }
            set { text = value; }
        }

        public string NavigateUrl
        {
            get { return navigateUrl; }
            set { navigateUrl = value; }
        }

        public List<MenuDropDownItem> Items
        {
            get { return items; }
        }

        public MenuDropDown(string name, string text, string navigateUrl)
        {
            this.name = name;
            this.text = text;
            this.navigateUrl = navigateUrl;
            this.items = new List<MenuDropDownItem>();
        }
    }
}
