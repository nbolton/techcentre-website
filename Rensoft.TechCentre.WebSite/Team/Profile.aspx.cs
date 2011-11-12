using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rensoft.TechCentre.WebSite.Team
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ContentLoader1.Filename = "Team/Profiles/" + Request.QueryString["Name"] + ".html";
        }
    }
}
