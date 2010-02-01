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

namespace Rensoft.TechCentre.WebSite
{
    public partial class StandardMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] randomBanners = new string[] {
                "~/Images/Standard/StandardBannerConfidence.jpg",
                "~/Images/Standard/StandardBannerDifferent.jpg",
                "~/Images/Standard/StandardBannerLookAfter.jpg",
                "~/Images/Standard/StandardBannerNeedMost.jpg",
                "~/Images/Standard/StandardBannerNoWorry.jpg",
                "~/Images/Standard/StandardBannerResponse.jpg",
                "~/Images/Standard/StandardBannerSafeHands.jpg",
                "~/Images/Standard/StandardBannerSolved.jpg"
            };

            Random random = new Random(Environment.TickCount);
            BannerImage.ImageUrl = randomBanners[random.Next(0, randomBanners.Length)];
        }
    }
}
