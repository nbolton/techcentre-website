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

namespace Rensoft.TechCentre.WebSite.Team
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string mouseoverImageUrl = ResolveUrl("~/Images/Team/EveryoneMouseover.jpg");
            //string mouseoutImageUrl = ResolveUrl("~/Images/Team/EveryoneMouseout.jpg");

            //EveryoneImage.Attributes["onmouseover"] = "changeImage(this, '" + mouseoverImageUrl + "')";
            //EveryoneImage.Attributes["onmouseout"] = "changeImage(this, '" + mouseoutImageUrl + "')";
        }
    }
}
